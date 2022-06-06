class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :adress
      t.integer :patrimonio_liquido
      t.integer :lucro_liquido
      t.string :atividade
      t.text :breve_descricao
      t.integer :numero_cotas

      t.timestamps
    end
  end
end
