module Admin
  class AlimentFindersController < BaseController
    def index
      @aliments = load_aliments
  
      render layout: false
    end
  
    private
  
    def load_aliments
      query = params[:q].presence.to_s
      if query.size > 1
        Aliment.full_search(query)
      else
        Aliment.none
      end
    end
  end
end