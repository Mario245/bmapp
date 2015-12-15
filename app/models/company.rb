class Company < Organization
	has_many :employees
	has_many :buildings
end
