class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :cnpj
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
