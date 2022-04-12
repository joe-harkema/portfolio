10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Sed enim tellus, lobortis ut lectus vitae, tempor eleifend libero. Aliquam ut eleifend eros. Cras non volutpat sapien. Pellentesque efficitur quis neque quis malesuada. Maecenas sodales vehicula dui eu gravida. Proin vel elementum est, vel viverra metus. Nunc vitae tempus nunc. Nunc at auctor sem. Cras in quam quis risus viverra sodales. Nam sagittis, urna maximus tincidunt viverra, metus justo lobortis eros, vel tristique augue massa eget dolor. Pellentesque venenatis ligula eros, sit amet dignissim eros vehicula et."
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "My great service",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis tristique odio, sed vulputate mi. Maecenas ac neque massa. Suspendisse eget posuere quam, vel vestibulum erat. ",
    main_image: "/images/ph_600x400.png",
    thumb_image: "/images/ph_350x200.png"
  )
end

puts "9 portfolio items created"
