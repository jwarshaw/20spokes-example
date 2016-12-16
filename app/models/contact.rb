class Contact < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :email, :message
	validates :email, uniqueness: true
end
