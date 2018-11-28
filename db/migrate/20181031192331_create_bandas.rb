class CreateBandas < ActiveRecord::Migration[5.1]
  def change
    create_table :bandas do |t|
      t.string :name
      t.string :genero
      t.string :pais_de_origem
      t.string :membros
      t.float :media_rating
      t.boolean :status
	  t.references :usuario, foreign_key: true #Dan

      t.timestamps
    end
  end
end
