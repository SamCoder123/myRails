class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :cover_image
      t.string :summary
      t.string :score

      t.timestamps
    end
  end
end
