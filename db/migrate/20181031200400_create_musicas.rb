class CreateMusicas < ActiveRecord::Migration[5.1]
  def change
    create_table :musicas do |t|
      t.string :name
      t.time :duracao
      t.text :letra
      t.string :album
	  t.references :banda, foreign_key: true #Dan

      t.timestamps
    end
  end
end
