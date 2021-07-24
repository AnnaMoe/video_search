class PagesController < ApplicationController
  def home
    # string all subjects as upper case, because it's a constant
    @ALL_SUBJECTS = "All subjects"
    # generate an array of strings (for the select dropdown)
    @array_of_subject_names = Subject.all.map { |subject| subject.name }
    
    # add "all subjects" option to the array
    @subjects = [ @ALL_SUBJECTS ] + @array_of_subject_names
    @videos = []

    # return to stop executing code bellow (prevent DB query to be executed if the user did not press the search button)
    return unless params[:commit].present?
    
    if params[:query].present?

      # solution with plain active record:
      #  sql_query = " \
      #   videos.title ILIKE :query \
      #   OR subjects.name ILIKE :query \
      # "
      # #I stands for case Insensitive:
      # #We want "dreieck" to return videos with Dreieck in its title
      # @videos = Video.joins(:subject).where(sql_query, query: "%#{params[:query]}%")
      # with this code I can't search for the subject and video title at the same time.

      # there is a way easier solution with the gem PG Search, the method is defined in the Video model

      @videos = Video.global_search(params[:query])
    else
      # if search query is empty
      @videos = Video.all       
    end

    if params[:subject].present? && params[:subject] != @ALL_SUBJECTS
      @videos = @videos.by_subject(params[:subject])
    end
  end
end
