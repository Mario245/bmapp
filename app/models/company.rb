class Company < Organization
	has_many :buildings
	has_many :users
end
