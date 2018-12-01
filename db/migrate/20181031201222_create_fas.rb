class CreateFas < ActiveRecord::Migration[5.1]
  def change
    create_table :fas do |t|
	  t.string :apelido
      t.references :usuario, foreign_key: true #Dan
	  
      t.timestamps
    end
  end
end
