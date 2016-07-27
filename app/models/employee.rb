class Employee < ActiveRecord::Base
	validates :emp_firstname, :presence=> {:message=>" cannot be blank"},
             :format => { :with => /\A[a-zA-Z@\.\s]*\z/, :message => "only alphabets."}
	validates :emp_lastname, :presence=> {:message=>" cannot be blank"},
             :format => { :with => /\A[a-zA-Z@\.\s]*\z/, :message => "only alphabets."}
	validates :email, :presence=> {:message => "cannot be blank."},
             :format => { :with =>  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => "Give Correct format"}  
end
