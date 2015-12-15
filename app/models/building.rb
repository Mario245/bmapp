class Building < ActiveRecord::Base
	has_many :apartments
	belongs_to :company
	has_many :employees, :through => :company
	has_many :tenants, :through => :apartments
	has_many :messages, :dependent => :destroy
end
