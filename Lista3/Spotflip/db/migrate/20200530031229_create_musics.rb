class CreateMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :musics do |t|
      t.string :name
      t.references :album, null: false, foreign_key: true
      t.boolean :explicit
      t.references :music_style, null: false, foreign_key: true

      t.timestamps
    end
  end
end
