class HomeworkDeliveriesController < ApplicationController
  before_action :set_homework_delivery, only: [:show, :edit, :update, :destroy]
  before_action :get_course, except: [:download_file]
  before_action :get_homework, except: [:download_file]
  # GET /homework_deliveries
  # GET /homework_deliveries.json
  def index
    @homework_deliveries = HomeworkDelivery.all
  end
  
  def get_course
    @course= Course.find(params[:course_id])
  end
  
  def get_homework
    @homework= Homework.find(params[:homework_id])
  end
  

  def download_file
    @homework_delivery = HomeworkDelivery.find(params[:id])   
    send_file @homework_delivery.work.current_path
  end
  
  # GET /homework_deliveries/1
  # GET /homework_deliveries/1.json
  def show
  end

  # GET /homework_deliveries/new
  def new
    @homework_delivery = HomeworkDelivery.new
  end

  # GET /homework_deliveries/1/edit
  def edit
  end

  # POST /homework_deliveries
  # POST /homework_deliveries.json
  def create
    @homework_delivery = HomeworkDelivery.new(homework_delivery_params)
    @homework_delivery.student = Student.where(user_id: current_user.id).first
    @homework_delivery.homework = @homework
    respond_to do |format|
      if @homework_delivery.save
        format.html { redirect_to @course, notice: 'Homework delivery was successfully created.' }
        format.json { render :show, status: :created, location: @homework_delivery }
      else
        format.html { render :new }
        format.json { render json: @homework_delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homework_deliveries/1
  # PATCH/PUT /homework_deliveries/1.json
  def update
    respond_to do |format|
      if @homework_delivery.update(homework_delivery_params)
        format.html { redirect_to course_homework_homework_deliveries_path(@course,@homework), notice: 'Homework delivery was successfully updated.' }
        format.json { render :show, status: :ok, location: @homework_delivery }
      else
        format.html { render :edit }
        format.json { render json: @homework_delivery.errors, status: :unprocessable_entity }
      end
    end  
  end

  # DELETE /homework_deliveries/1
  # DELETE /homework_deliveries/1.json
  def destroy
    @homework_delivery.destroy
    respond_to do |format|
      format.html { redirect_to homework_deliveries_url, notice: 'Homework delivery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homework_delivery
      @homework_delivery = HomeworkDelivery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homework_delivery_params
      params.require(:homework_delivery).permit(:file_path, :work, :nota)
    end
  
end
