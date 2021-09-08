class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :style
      t.string :range
      t.string :number_of_performers
      t.belongs_to :show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
