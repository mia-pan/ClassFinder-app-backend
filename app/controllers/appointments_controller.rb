class AppointmentsController < ApplicationController

    def index 
        appointments = Appointment.all
        render :json => appointments
    end 

    def show 
        appointment = Appointment.find_by(id: params[:id])
        render :json => appointment
    end 


    def create 
        # byebug
        appointment = Appointment.create(appointment_params)
        appointment.save 
        render :json => appointment
    end

    # def get_appointments_requests
    #     @appointment = Appointment.find(params[:id])
    #     @appointment_requests = 
    # end 
    
    def category_appointments
        appointments = Appointment.where(category_id: request.headers['category-id'])
        render json: {appointments: appointments}
    end

    def update 
        appointment = Appointment.find(params[:id])
        appointment.update(appointment_params)
        render :json => appointment
    end 

    def destroy
        appointment = Appointment.find(params[:id])
        appointment.destroy
        render :json => {status: 'deleted'}
    end 

    private 
    def appointment_params
        params.require(:appointment).permit(:id, :name, :time, :duration, :location, :instructor, :status, :category_id)
    end 

end
