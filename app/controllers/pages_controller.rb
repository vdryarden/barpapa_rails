class PagesController < ApplicationController
  Slugs= ["בית", "אודות","צור_קשר"]
  
  def show
    render params[:slug]
  end
end