module GameHelper
  # Возвращает текущее состояние угадываемого слова
  def word_to_show
    result = @game.letters_to_guess.map do |letter|
      if letter.nil?
        '__'
      else
        letter
      end
    end

    # Преобразуем массив в строку с разделителем - пробелом
    result.join(' ')
  end
end
