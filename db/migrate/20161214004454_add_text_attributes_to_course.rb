class AddTextAttributesToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :text1, :text
    add_column :courses, :text2, :text
    add_column :courses, :text3, :text
    add_column :courses, :text4, :text
  end
end
