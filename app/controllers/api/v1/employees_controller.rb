class Api::V1::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      birthdate: params[:birthdate],
      email: params[:email],
      ssn: params[:ssn]
      )
    render :show
  end

  def show
    @employee = Employee.find_by(id:params[:id])
  end

  def update
    @employee = Employee.find_by(id:params[:id])
    @employee.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      birthdate: params[:birthdate],
      email: params[:email],
      ssn: params[:ssn]
      )
    render :show
  end

  def destroy
    @employee = Employee.find_by(id:params[:id])
    @employee.destroy
    render json: {message: "Employee FIRED!!!!!"}
  end
end
