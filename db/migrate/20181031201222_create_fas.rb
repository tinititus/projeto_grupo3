class CreateFas < ActiveRecord::Migration[5.1]
  def change
    create_table :fas do |t|

      t.timestamps
    end
  end
end
