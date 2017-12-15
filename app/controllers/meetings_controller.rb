class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :user_show, :edit, :user_edit, :user_update, :update, :destroy]
  before_action :set_meetings, only: [:index, :user_index]

  # GET /meetings
  # GET /meetings.json
  def index
  end

  def user_index
  end

  # GET /meetings/1
  # GET /meetings/1.json
  def show
  end

  def user_show
  end

  # GET /meetings/new
  def new
    @meeting = Meeting.new
    if user_signed_in?
      @meeting.user = current_user
    end
  end

  def user_new
    @meeting = Meeting.new
    if user_signed_in?
      @meeting.user = current_user
    end
  end

  # GET /meetings/1/edit
  def edit
  end

  def user_edit
  end

  # POST /meetings
  # POST /meetings.json
  def create
    @meeting = Meeting.new(meeting_params)
    if user_signed_in?
      @meeting.user = current_user
    end

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to @meeting, notice: 'Meeting was successfully created.' }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  def user_create
    @meeting = Meeting.new(meeting_params)
    if user_signed_in?
      @meeting.user = current_user
    end
    if @meeting.save
      redirect_to user_meeting_path(@meeting), notice: 'Meeting was successfully created.'
    else
      render :user_new
    end
  end

  # PATCH/PUT /meetings/1
  # PATCH/PUT /meetings/1.json
  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to @meeting, notice: 'Meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  def user_update
    if @meeting.update(meeting_params)
      redirect_to user_meeting_path(@meeting), notice: 'Meeting was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /meetings/1
  # DELETE /meetings/1.json
  def destroy
    @meeting.destroy
    respond_to do |format|
      format.html { redirect_to meetings_url, notice: 'Meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    def set_meetings
      @meetings = Meeting.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_params
      params.require(:meeting).permit(:title, :description, :city_id, :user_id, :interest_id, :date_time_start, :date_time_finish, :address, :image)
    end
end
