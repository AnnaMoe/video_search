class PagesController < ApplicationController
  def home
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

      # there is a way easier solution with the gem PG Search, the method is defined in the Video model.

      @videos = Video.global_search(params[:query])
    else
      # if search query is empty
      @videos = Video.all       
    end
  end
end
