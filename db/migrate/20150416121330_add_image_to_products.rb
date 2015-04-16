class AddImageToProducts < ActiveRecord::Migration
  def change
    add_attachment :products, :image, :attachment
  end
end
