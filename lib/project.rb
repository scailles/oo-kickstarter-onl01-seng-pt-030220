class Project
  
  attr_accessor :backers
  attr_reader :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    if !(Backers.backed_projects.include?(self))
      Backers.backed_projects << self
  end
  
end