class LecturesController < InheritedResources::Base
before_action :authenticate_user!
#commontator_thread_show(@commontable)


def spam
    
  current_user.lectures << Lecture.find(params[:id])  
     redirect_to lectures_url
 end 
 

def show
  @lecture = Lecture.find(params[:id])
  commontator_thread_show(@lecture)
end

def upvote 
  @lecture = Lecture.find(params[:id])
  @lecture.upvote_by current_user
  # render "show"
  redirect_to(@lecture)
end 

def downvote
  @lecture = Lecture.find(params[:id])
  @lecture.downvote_by current_user
  # render "show"
  redirect_to(@lecture)
end

  private

    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id)
    end
end

