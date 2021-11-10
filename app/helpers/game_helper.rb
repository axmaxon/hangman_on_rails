module GameHelper
  # Возвращает текущее состояние угадываемого слова
  def word_to_show(game)
    result = game.letters_to_guess.map do |letter|
      if letter.nil?
        '__'
      else
        letter
      end
    end

    # Преобразуем массив в строку с разделителем - пробелом
    result.join(' ')
  end

  def errors_to_show(game)
    game.errors_letters.join(" ")
  end

  def fa_icon(icon_class)
    tag.span('', class: "fa fa-#{icon_class}")
  end
end
