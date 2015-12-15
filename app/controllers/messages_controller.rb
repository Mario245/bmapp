class MessagesController < ApplicationController
  before_filter :find_building
  begore_filter :find_message, :only => [:show, :edit, :update, :destroy]
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
  end

  # GET /messages/new
  def new
     @messages = @building.messages.build
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = @building.messages.build(message_params)

 
      if @message.save
        flash[:notice] = "Ticket has been created"
        redirect_to [@building, @message]
      else
        flash[:alert] = "Ticket has not been created"
        render :action => "new"
      end
    end


  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
      @message.destroy
      respond_to do |format|
      flash[:notice] = "Work Request has been deleted."
      redirect_to @building
    end
  end

  private
    def find_building
      @building = Building.find(params[:building_id])
    end

     def find_message
      @message = @building.messages.find(params[:id])
    end


    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:to, :from, :body, :category)
    end
end
