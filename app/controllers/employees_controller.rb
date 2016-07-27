class EmployeesController < ApplicationController
	def new
		@employee = Employee.new
	end
	def create
	  @employee = Employee.create(emp_parmas)
	  # respond_to do |format|  
	    if @employee.save
		    # format.html {flash[:notice] = 'Employee was successfully created.' and redirect_to action: "index"}   
		    # format.js
		    redirect_to employees_path	
	    else
	    	render 'new'
	    end
	  # end
	end

	def index
		@employees = Employee.all
		respond_to do |format|
    	format.html
    	format.js
    end
	end

	def emp_parmas
		params.require(:employee).permit(:emp_firstname,:emp_lastname,:email)
	end
end
