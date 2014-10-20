class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :descricao
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
