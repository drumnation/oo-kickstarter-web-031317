class Backer
  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
  
  # def back_project(project)
  #   Donation.new(self, project)
  # end

  def donations
    Donation.all.select do |donation|
      donation.backer == self
    end
    # iterates over all the donations
    # return an array of the ones where the backer matches this backer i.e self
  end

  # def backed_projects(project)
  #   donations.collect { |donation| donation.project }
  #   # iterate over my collection of donations
  #   # return a new array of each donations project
  # end

end
# def Backer
#   attr_reader :name
#
#   def initialize(name)
#     @name = name
#     @backed_projects = []
#   end
#
#   def back_project(project)
#     backed_projects << project
#     project.backers << self
#   end
#
#   def backed_projects
#     @backed_projects
#   end
#
# end

# class SomethingWeird
#   attr_reader :backers
#   def initalize
#     @backers = []
#   end
# end
#
# something_weird = SomethingWeird.new
# backer.back_project(something_weird)
