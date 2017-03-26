class Project
  attr_reader :title
  attr_accessor :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
    # adds the backer to the project's @backers array
    # adds the project to the backer's backed_projects array
  end

end

# Donations Lecture

# def donations
#   Donation.all.select { |donation| donation.project == self }
# end
# 
# def backers
#   donations.collect { |donation| donation.backer }
# end
