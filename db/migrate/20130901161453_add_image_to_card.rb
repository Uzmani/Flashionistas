class AddImageToCard < ActiveRecord::Migration
  def change
    add_column :cards, :images, :string
  end
end
