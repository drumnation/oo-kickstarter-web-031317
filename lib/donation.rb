class Donation

  ALL = []

  def self.all # so we have access to ALL variable
    ALL
  end

  attr_reader :backer, :project

  def initialize(backer, project)
    @backer = backer
    @project = project
    ALL << self
  end

end

# Donation::ALL -> if I wanted to read it.
