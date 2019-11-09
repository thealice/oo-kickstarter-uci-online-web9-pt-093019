require 'pry'
class Backer
  attr_reader :name, :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  def back_project(project_instance)
    if Project.all.include?(project_instance)
      @backed_projects << project_instance
      project_instance.add_backer(self)

    else
      Project.new(project_instance)
            binding.pry
    end
  end
end
