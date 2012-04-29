class SearchController < ApplicationController
  
  def index
    @people = Person.where('name like ?', "%#{params[:term]}%").map do |obj| 
        { :label => obj.name, :value => person_url(obj) }
    end
    respond_to do |format|
      format.json { render :json => @people }
    end
  end
end