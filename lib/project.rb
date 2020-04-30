class Project
  
  attr_accessor :backers
  attr_reader :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    if !(backers.backed_projects.include?(self))
      backers.backed_projects << self
    else nil
    end
  end
  
end