class Message < ActiveRecord::Base
	belongs_to :user
	belongs_to :building
    validates :body, :presence => true,
    			     :length => 10 )

end
