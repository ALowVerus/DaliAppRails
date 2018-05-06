class StaticPagesController < ApplicationController
  def home
  end

  def dalimembers
    require 'open-uri'
    parsed_json = JSON.parse(open("http://mappy.dali.dartmouth.edu/members.json").read)
    @selected = parsed_json
    if params[:term] != nil
      @selected = @selected.select {|member| member['terms_on'].include? params[:term]}
    end
  end
end
