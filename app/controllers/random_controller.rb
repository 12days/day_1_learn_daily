class RandomController < ApplicationController
  respond_to :json

  def index
    respond_with(Article.random.to_json)
  end
end
