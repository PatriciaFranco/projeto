class CreateProdutopromocoes < ActiveRecord::Migration
  def change
    create_table :produtopromocoes do |t|
      t.float :valor
      t.references :empresa, index: true
      t.references :produto, index: true

      t.timestamps
    end
  end
end
