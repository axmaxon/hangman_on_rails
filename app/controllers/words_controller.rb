class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def create
    @word = Word.create(text: params[:text])
  end
end
