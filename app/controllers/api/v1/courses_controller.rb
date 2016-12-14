class Api::V1::CoursesController < Api::V1::BaseController

  def index
    respond_with Course.all
  end

  def create
    respond_with :api, :v1, Course.create(course_params)
  end

  def destroy
    respond_with Course.destroy(params[:id])
  end

  def update
    course = Course.find(params["id"])
    course.update_attributes(course_params)
    respond_with course, json: course
  end

  private

    def course_params
      params.require(:course).permit(:name, :description, :notes, :video_link, :price)
    end
end