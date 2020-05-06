class UserAppointmentsController < ApplicationController

    def create
         @user = User.find(user_appointments_params[:user_id])
         @appointment = Appointment.find(user_appointments_params[:appointment_id])
        @user.appointments << @appointment
        render json: @appointment
    end 

    def destroy
        @user_appointments = UserAppointment.find(params[:id])
        @user_appointments.destroy
        render :json => {status: 'deleted'}
    end 

    private 
    def user_appointments_params
        params.require(:user_appointments).permit(:id, :user_id, :appointment_id)
    end 

end
