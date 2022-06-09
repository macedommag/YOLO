class AddCoordinatesToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :latitude, :float
    add_column :companies, :longitude, :float
  end
end
