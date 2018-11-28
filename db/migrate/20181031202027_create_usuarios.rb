class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :tipo

      t.timestamps
    end
  end
end
