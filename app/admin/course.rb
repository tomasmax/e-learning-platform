ActiveAdmin.register Course do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

form do |f|
  f.inputs "Course data" do
    f.input :name
    f.input :description
    f.input :notes
    f.input :video_link
    f.input :price
    f.input :text1
    f.input :text2
    f.input :text3
    f.input :text4
    f.input :image, as: :file
  end

  f.inputs do
    f.has_many :lessons do |lesson|
      lesson.input :name
      lesson.input :description
      lesson.input :content
      lesson.input :notes
    end
  end

  f.inputs do
    f.has_many :reviews do |review|
      review.input :comment
      review.input :rating
      review.input :user
    end
  end

  f.actions
end

controller do
  def permitted_params
    params.permit!
  end
end

end
