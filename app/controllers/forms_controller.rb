class FormsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]
# before_action :authenticate
# before_action :student_takes_this_course

  # GET /forms
  # GET /forms.json
  def index
    @forms = Form.all
  end

  # GET /forms/1
  # GET /forms/1.json
  def show
    sql ="SELECT * FROM forms where form_id='#{params[:id]}'"
    @form = ActiveRecord::Base.connection.execute(sql)
    @form = @form.to_a


   # questions = Question.where(form_id: @form.form_id)
    
    sql = "(SELECT Q.* FROM questions AS Q WHERE Q.form_id IN(SELECT F.form_id FROM forms AS F INNER JOIN quizzes AS Qu ON (F.form_id=Qu.quiz_id)  WHERE   Q.form_id='#{params[:id]}'))";
    questions = ActiveRecord::Base.connection.execute(sql)
    questions.to_a

    @tfs = []
    @essayqs = []
    @numqs = []
    @mcqs = []

    questions.each do |q|
      entry = q["question_id"]
      sql = "SELECT M.* FROM mcqs AS M WHERE M.mcq_id = '#{entry}'"
      mcq = ActiveRecord::Base.connection.execute(sql)
      puts mcq
      mcq.to_a
      puts "hereeeeeeeeeeeeeeeeeeeeeeeeeeee"
      puts mcq.first
      if mcq.first 
        sql = "SELECT C.* from mcq_choices AS C WHERE C.mcq_id = '#{entry}'"
        choices = ActiveRecord::Base.connection.execute(sql)
        choices.to_a
        ch = []
        choices.each do |c|
          ch << c["choice"]
          puts "choiceeeeeeeeeeeeeeeeeeeeeeeeeee"
          puts c["choice"]
        end
        @mcqs << MultipleChoice.new(q, ch)
        next
      end

      sql = "SELECT M.* FROM tfs AS M WHERE M.tf_id = '#{entry}'"
      tf = ActiveRecord::Base.connection.execute(sql)
      tf.to_a
      if tf.first
        @tfs << q
        next
      end

      sql = "SELECT M.* FROM essay_questions AS M WHERE M.essay_id = '#{entry}'"
      essay = ActiveRecord::Base.connection.execute(sql)
      essay.to_a
      if essay.first
        @essayqs << q
        next
      end


      sql = "SELECT M.* FROM essay_questions AS M WHERE M.essay_id = '#{entry}'"
      num = ActiveRecord::Base.connection.execute(sql)
      num.to_a
      if num.first
        @numqs << q
        next
      end
    end















    # mcqs1.to_a

    # sql = "SELECT M.* FROM numerical_questions AS M WHERE M.numerical_question_id IN(SELECT Q.* FROM questions AS Q WHERE Q.form_id IN(SELECT F.form_id FROM forms AS F INNER JOIN quizzes AS Q ON (F.form_id=Q.quiz_id)  WHERE   Q.form_id='#{params[:id]}'))";
    # @numqs = ActiveRecord::Base.connection.execute(sql)
    # @numqs.to_a

    # sql = "SELECT M.* FROM essay_questions AS M WHERE M.essay_id IN(SELECT Q.* FROM questions AS Q WHERE Q.form_id IN(SELECT F.form_id FROM forms AS F INNER JOIN quizzes AS Q ON (F.form_id=Q.quiz_id)  WHERE   Q.form_id='#{params[:id]}'))";
    # @essayqs = ActiveRecord::Base.connection.execute(sql)
    # @essayqs.to_a

    # sql = "SELECT M.* FROM tfs AS M WHERE M.tf_id IN(SELECT Q.* FROM questions AS Q WHERE Q.form_id IN(SELECT F.form_id FROM forms AS F INNER JOIN quizzes AS Q ON (F.form_id=Q.quiz_id)  WHERE   Q.form_id='#{params[:id]}'))";
    # @tfs = ActiveRecord::Base.connection.execute(sql)
    # @tfs.to_a 

    # @mcqs = []
    # mcqs1.each do |m|
    #   entry = '#{m["mcq_id"]}'
    #   sql = "SELECT * FROM mcq_choices WHERE mcq_id = '#{entry}'"
    #   choices = ActiveRecord::Base.connection.execute(sql)
    #   choices.to_a

    #   @mcqs << MultipleChoice.new(m, choices)
    # end

    puts "heyyyyyyyyyyyyyyyyyyyyyyyyyyyy"
    puts questions
    puts @mcqs
    puts @numqs
    puts @essayqs
    puts @tfs
    puts "byeeeeeeeeeeeeeeeeeeeeeeeeeee"
  end

  # GET /forms/new
  def new
    @form = Form.new
  end

  # GET /forms/1/edit
  def edit
  end

  # POST /forms
  # POST /forms.json
  def create
    @form = Form.new(form_params)

    respond_to do |format|
      if @form.save
        format.html { redirect_to @form, notice: 'Form was successfully created.' }
        format.json { render :show, status: :created, location: @form }
      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/1
  # PATCH/PUT /forms/1.json
  def update
    respond_to do |format|
      if @form.update(form_params)
        format.html { redirect_to @form, notice: 'Form was successfully updated.' }
        format.json { render :show, status: :ok, location: @form }
      else
        format.html { render :edit }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form.destroy
    respond_to do |format|
      format.html { redirect_to forms_url, notice: 'Form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form
      @form = Form.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_params
      params[:form]
    end
end
