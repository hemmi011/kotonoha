class EventsController < ApplicationController
    def index
        @events = Event.all.includes(:user)
    end

    def new
        @event = Event.new
    end

    def create
        @event = current_user.events.build(event_params)
        if @event.save
            redirect_to events_path, success: "イベント作成に成功しました"
        else
            flash.now[:notice] = "イベント作成に失敗しました"
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @event = Event.find(params[:id])
        @post = Post.new
        @posts = @event.posts.includes(:user).order(created_at: :desc)
    end

    def edit 
      @event = current_user.events.find(params[:id])
    end

    def update
      @event= current_user.events.find(params[:id])
        if @event.update(event_params)
          redirect_to event_path(@event), success: "更新に成功しました"
        else
          flash.now[:notice] = "更新に失敗しました"
          render :edit, status: :unprocessable_entity
      end
    end

    private

    def event_params
        params.require(:event).permit(:title, :body, :start_at)
    end

end
