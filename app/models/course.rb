class Course < ActiveRecord::Base
  has_many :enrollments
  has_many :users, through: :enrollments
  has_many :lessons
  has_many :reviews
  has_attached_file :image, styles: {poster: "1600x900>", medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  accepts_nested_attributes_for :lessons, allow_destroy: true
  accepts_nested_attributes_for :reviews, allow_destroy: true

  validates :name, presence: true

end
