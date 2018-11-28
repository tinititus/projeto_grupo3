class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :nota
      t.text :comentario
      t.references :banda, foreign_key: true #Dan
      t.references :fa, foreign_key: true #Dan
	  
      t.timestamps
    end
  end
end
