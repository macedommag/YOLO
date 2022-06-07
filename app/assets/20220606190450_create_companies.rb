class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :adress
      t.integer :equety
      t.integer :net_inc
      t.string :activity
      t.text :description
      t.integer :max_quotas
      t.integer :price_quotum
      t.string :image_url

      t.timestamps
    end
  end
end
