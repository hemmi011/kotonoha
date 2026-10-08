class EventsController < ApplicationController
    def index
        @events = Event.all.includes(:user)
    end
end
