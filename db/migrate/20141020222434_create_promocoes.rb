class CreatePromocoes < ActiveRecord::Migration
  def change
    create_table :promocoes do |t|
      t.date :data_inicio
      t.date :data_fim
      t.float :abragencia
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
