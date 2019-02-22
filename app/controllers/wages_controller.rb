class WagesController < ApplicationController
  layout 'home'
  def index
    @employees = Employee.all
  end

  def show
    @wage = Wage.find(params[:id])
  end
end
