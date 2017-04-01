class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.attachment :avatar
      t.string :avatar_path

      t.timestamps
    end
  end
end
