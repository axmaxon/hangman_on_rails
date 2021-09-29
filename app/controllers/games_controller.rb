class GamesController < ApplicationController
  def create
    # Экономим память! -  не используем Word.all.sample, а
    # доверяем случайный выбор элемента СУБД
    word = Word.order('RANDOM()').first
    game = word.games.create

    redirect_to game
  end

  def show
    @game = Game.find(params[:id])
  end

  def index
    @games = Game.sorted
  end

  def play
  end
end
