class PartCompletionsController < ApplicationController
  before_action :set_part_completion, only: [:show, :edit, :update, :destroy]

  # GET /part_completions
  # GET /part_completions.json
  def index
    @part_completions = PartCompletion.all
  end

  # GET /part_completions/1
  # GET /part_completions/1.json
  def show
  end

  # GET /part_completions/new
  def new
    @part_completion = PartCompletion.new
  end

  # GET /part_completions/1/edit
  def edit
  end

  # POST /part_completions
  # POST /part_completions.json
  def create
    @part_completion = PartCompletion.new(part_completion_params)

    respond_to do |format|
      if @part_completion.save
        format.html { redirect_to @part_completion, notice: 'Part completion was successfully created.' }
        format.json { render :show, status: :created, location: @part_completion }
      else
        format.html { render :new }
        format.json { render json: @part_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part_completions/1
  # PATCH/PUT /part_completions/1.json
  def update
    respond_to do |format|
      if @part_completion.update(part_completion_params)
        format.html { redirect_to @part_completion, notice: 'Part completion was successfully updated.' }
        format.json { render :show, status: :ok, location: @part_completion }
      else
        format.html { render :edit }
        format.json { render json: @part_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_completions/1
  # DELETE /part_completions/1.json
  def destroy
    @part_completion.destroy
    respond_to do |format|
      format.html { redirect_to part_completions_url, notice: 'Part completion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part_completion
      @part_completion = PartCompletion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def part_completion_params
      params.require(:part_completion).permit(:student_id, :lesson_part_id)
    end
end
