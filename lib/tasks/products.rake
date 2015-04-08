desc "Генерация 100 продуктов"
namespace :products do
  task :create=>:environment do
    100.times do |i|
      p=Product.new(name: "Товар #{i+1}",price:rand(1.0e6)/100.0+1, weight: rand(3000)+1)
      p.discription="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
      p.save!
    end
  end
end
