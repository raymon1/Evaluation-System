class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate ektebha sa7 
  
  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    sql = "SELECT name FROM courses WHERE code = '#{params[:code]}'"
    @course = ActiveRecord::Base.connection.execute(sql)
    @course.to_a
   # @course = set_course
    sql = "SELECT form_id, title FROM forms WHERE course_id = '#{params[:code]}'"
    #@forms = Form.where(course_id: @course.code)
    forms = ActiveRecord::Base.connection.execute(sql)
    forms.to_a
    puts forms[0]
    puts "heeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"

    sql = "SELECT forms.title, quizzes.quiz_id FROM forms INNER JOIN quizzes ON (forms.form_id=quizzes.quiz_id)  WHERE  forms.course_id='#{params[:code]}';"
    @quizzes = ActiveRecord::Base.connection.execute(sql)
    @quizzes.to_a

    sql = "SELECT forms.title, feedbacks.feedback_id FROM forms INNER JOIN feedbacks ON (forms.form_id=feedbacks.feedback_id)  WHERE  forms.course_id='#{params[:code]}';"
    @feedbacks = ActiveRecord::Base.connection.execute(sql)
    @feedbacks.to_a

    sql = "SELECT forms.title, sheets.sheet_id FROM forms INNER JOIN sheets ON (forms.form_id=sheets.sheet_id)  WHERE  forms.course_id='#{params[:code]}';"
    @sheets = ActiveRecord::Base.connection.execute(sql)
    @sheets.to_a

    sql = "SELECT forms.title, assignments.assignment_id FROM forms INNER JOIN assignments ON (forms.form_id=assignments.assignment_id)  WHERE  forms.course_id='#{params[:code]}';"
    @assignments = ActiveRecord::Base.connection.execute(sql)
    @assignments.to_a


    puts "heerrrrreeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
    puts @quizzes
    puts "qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq"
    puts @feedbacks
    puts "ffffffffffffffffffffffffffffffffffff"
    puts @sheets
    puts "ssssssssssssssssssssssssssssssssssss"
    puts @assignments
    puts "byeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:code])
      sql = ""
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params[:course]
    end
end
