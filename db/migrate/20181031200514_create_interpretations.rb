class CreateInterpretations < ActiveRecord::Migration[5.1]
  def change
    create_table :interpretations do |t|
      t.text :interpretation
      t.references :musica, foreign_key: true #Dan
      t.references :fa, foreign_key: true #Dan
	  
      t.timestamps
    end
  end
end
