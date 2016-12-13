class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.text :notes
      t.string :video_link
      t.float :price

      t.timestamps null: false
    end
  end
end
