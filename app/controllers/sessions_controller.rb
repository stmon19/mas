class SessionsController < ApplicationController
  before_action :set_meeting
  before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /sessions
  def index
  end

  # GET /sessions/1
  def show
  end

  # GET /sessions/new
  def new
    @session = @meeting.sessions.build
  end

  # GET /sessions/1/edit
  def edit
  end

  # POST /sessions
  def create
    @session = @meeting.sessions.build(session_params)

    if @session.save
      redirect_to meeting_sessions_path, notice: 'Session was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sessions/1
  def update
    if @session.update(session_params)
      redirect_to @session, notice: 'Session was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sessions/1
  def destroy
    @session.destroy
    redirect_to sessions_url, notice: 'Session was successfully destroyed.'
  end

  def selected
    @sessions = Session.where ["sessions.id in (?)", params[:session_ids]]
  end

  private
    def set_meeting
      @meeting = Meeting.find(params[:meeting_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def session_params
      params.require(:session).permit(:meeting_id, :name, :code, :category, :start_at, :end_at, :floor_name, :capacity, :amount, :counter)
    end
end
