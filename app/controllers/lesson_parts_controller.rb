class LessonPartsController < ApplicationController
  before_action :set_lesson_part, only: [:show, :edit, :update, :destroy]

  # GET /lesson_parts
  # GET /lesson_parts.json
  def index
    @lesson_parts = LessonPart.all
  end

  # GET /lesson_parts/1
  # GET /lesson_parts/1.json
  def show
  end

  # GET /lesson_parts/new
  def new
    @lesson_part = LessonPart.new
  end

  # GET /lesson_parts/1/edit
  def edit
  end

  # POST /lesson_parts
  # POST /lesson_parts.json
  def create
    @lesson_part = LessonPart.new(lesson_part_params)

    respond_to do |format|
      if @lesson_part.save
        format.html { redirect_to @lesson_part, notice: 'Lesson part was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_part }
      else
        format.html { render :new }
        format.json { render json: @lesson_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_parts/1
  # PATCH/PUT /lesson_parts/1.json
  def update
    respond_to do |format|
      if @lesson_part.update(lesson_part_params)
        format.html { redirect_to @lesson_part, notice: 'Lesson part was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_part }
      else
        format.html { render :edit }
        format.json { render json: @lesson_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_parts/1
  # DELETE /lesson_parts/1.json
  def destroy
    @lesson_part.destroy
    respond_to do |format|
      format.html { redirect_to lesson_parts_url, notice: 'Lesson part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_part
      @lesson_part = LessonPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_part_params
      params.require(:lesson_part).permit(:title, :position, :lesson_id)
    end
end
