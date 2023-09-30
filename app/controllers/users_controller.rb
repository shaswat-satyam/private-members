class UsersController < ApplicationController
    def show
        @user_events = Event.where(user_id: current_user.id)
        @attending = Attendance.where(user_id: current_user.id)
        @events = Event.all
    end
end