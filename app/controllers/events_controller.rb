class EventsController < ApplicationController
    def index
        @event = Event.includes(:user)
    end
end
