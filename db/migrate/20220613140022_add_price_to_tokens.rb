class AddPriceToTokens < ActiveRecord::Migration[6.1]
  def change
    add_column :tokens, :price, :integer
  end
end
