class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies, id: :uuid do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.string :country
      t.date :published_at
      t.string :description

      t.timestamps
    end
  end
end
