class CreateInterpretations < ActiveRecord::Migration[5.1]
  def change
    create_table :interpretations do |t|
      t.text :interpretation

      t.timestamps
    end
  end
end
