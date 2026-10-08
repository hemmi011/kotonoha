class EventsController < ApplicationController
    def index
        @events = Event.all.includes(:user)
    end

    def new
        @event = Event.new
    end

end
