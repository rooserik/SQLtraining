class CourseStudentsController < ApplicationController
  before_action :set_course_student, only: [:show, :edit, :update, :destroy]

  # GET /course_students
  # GET /course_students.json
  def index
    @course_students = CourseStudent.all
  end

  # GET /course_students/1
  # GET /course_students/1.json
  def show
  end

  # GET /course_students/new
  def new
    @course_student = CourseStudent.new
  end

  # GET /course_students/1/edit
  def edit
  end

  # POST /course_students
  # POST /course_students.json
  def create
    @course_student = CourseStudent.new(course_student_params)

    respond_to do |format|
      if @course_student.save
        format.html { redirect_to @course_student, notice: 'Course student was successfully created.' }
        format.json { render :show, status: :created, location: @course_student }
      else
        format.html { render :new }
        format.json { render json: @course_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_students/1
  # PATCH/PUT /course_students/1.json
  def update
    respond_to do |format|
      if @course_student.update(course_student_params)
        format.html { redirect_to @course_student, notice: 'Course student was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_student }
      else
        format.html { render :edit }
        format.json { render json: @course_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_students/1
  # DELETE /course_students/1.json
  def destroy
    @course_student.destroy
    respond_to do |format|
      format.html { redirect_to course_students_url, notice: 'Course student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_student
      @course_student = CourseStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_student_params
      params.require(:course_student).permit(:course_id, :student_id)
    end
end
