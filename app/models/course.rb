class Course < ActiveRecord::Base
  def course_num
    self[:course_num]
  end
end
