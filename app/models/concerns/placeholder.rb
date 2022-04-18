module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(width: , height:)
    "ph_#{width}x#{height}.png"
  end
end