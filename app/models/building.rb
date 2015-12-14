class Building < ActiveRecord::Base
	has_many :apartments
	belongs_to :company
end
