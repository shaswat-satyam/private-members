class AttendanceController < ApplicationController
    def new
        exists = Attendance.where(user_id: current_user.id, event_id: params[:format])
        if exists.empty?
            attendance = Attendance.create!(user_id: current_user.id, event_id: params[:format])
            attendance.save!
            flash[:alert] = "Attending the event"
        else
            flash[:alert] = "Already a attendee"
        end
        redirect_to root_path
    end
    def show
        Attendance.find_by(user_id: current_user.id, event_id: params[:id]).destroy
        
    
        respond_to do |format|
          format.html { redirect_to events_url, notice: " Not Attending the event." }
          format.json { head :no_content }
        end
    end

end