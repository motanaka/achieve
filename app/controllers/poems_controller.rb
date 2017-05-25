class PoemsController < ApplicationController

  # GET /poems
  # GET /poems.json
  def index
    @poems = Poem.all
  end

  # GET /poems/1
  # GET /poems/1.json
  def show
    @poem = Poem.find(params[:id])
    # render json: @poems
  end
  
end