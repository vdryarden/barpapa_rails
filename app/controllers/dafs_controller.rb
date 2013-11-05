class DafsController < ApplicationController
  def show
    daf= Daf.find params[:id]
    @paragraphs= daf.paragraphs
    
    all_pirushes= @paragraphs.flat_map(&:pirushes)
    @rashi=  all_pirushes.select{|p| p.type == 'Rashi' }
    @tosfot= all_pirushes.select{|p| p.type == 'Tosfot' }
  end
end
