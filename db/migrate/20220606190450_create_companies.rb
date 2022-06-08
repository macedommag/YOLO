class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.integer :equety
      t.integer :net_inc
      t.string :activity
      t.text :description
      t.integer :max_tokens
      t.integer :sold_tokens
      t.integer :price_of_token
      t.string :image_url

      t.timestamps
    end
  end
end
