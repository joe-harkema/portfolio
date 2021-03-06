class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all.sort_by { |p| p.id }
  end

  def angular
    @angular_portfolio_items = Portfolio.angular.sort_by { |p| p.id }
  end

  def rails
    @rails_portfolio_items = Portfolio.ruby_on_rails.sort_by { |p| p.id }
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name]))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Your portfolio item is now live." }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: "The record was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    #do the lookup
    @portfolio_item = Portfolio.find(params[:id])
    
    #destroy the portfolio
    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Record was removed." }
    end
  end

end
