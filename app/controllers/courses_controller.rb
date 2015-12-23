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
    @course = set_course
    @forms = Form.where(course_id: @course.code)
    
    @quizzes = []
    @feedbacks = []
    @sheets = []
    @assignments = []

    @forms.each do |f|
      q = Quiz.find_by_quiz_id(f.form_id)
      if q
        @quizzes << q
        next
      end
      f = Feedback.find_by_feedback_id(f.form_id)
      if f 
        @feedbacks << f
        next
      end
      s = Sheet.find_by_sheet_id(f.form_id)
      if s 
        @sheets << s
        next
      end
      a = Assignment.find_by_assignment_id(f.form_id)
      if a
        @assignments << a
        next
      end
    end

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
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params[:course]
    end
end
