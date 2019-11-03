class AddProducts < ActiveRecord::Migration[5.2]
  def up
    5.times do |i|
      Product.create(name: "Product ##{i}", description: "A product.")
    end
  end
 
  def down
    Product.delete_all
  end
end
