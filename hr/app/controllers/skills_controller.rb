class SkillsController < ApplicationController
    
    def create
    @resume = Resume.find(params[:resume_id])
    @Skill = @resume.skills.create(Skill_params)
    redirect_to resume_path(@resume)
    end
 
  private
    def comment_params
      params.require(:Skill).permit(:title, :level)
    end
    
    
end
