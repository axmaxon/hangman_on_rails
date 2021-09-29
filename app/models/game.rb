class Game < ApplicationRecord
  TOTAL_ERRORS_ALLOWED = 7

  belongs_to :word

  scope(:sorted, -> { order(created_at: :desc)})

  def errors_letters
    guesses - normalized_letters(letters)
  end

  def errors_made
    errors_letters.length
  end

  def errors_allowed
    TOTAL_ERRORS_ALLOWED - errors_made
  end

  def letters_to_guess
    letters.map do |letter|
      letter if guesses.include?(normalize_letter(letter))
    end
  end

  def lost?
    errors_allowed == 0
  end

  def normalize_letter(letter)
    case letter
    when 'Ё' then 'Е'
    when 'Й' then 'И'
    else letter
    end
  end

  def normalized_letters(letters)
    letters.map { |letter| normalize_letter(letter) }
  end

  def over?
    won? || lost?
  end

  def play!(letter)
    normalize_letter = normalize_letter(letter)

    if !over? && !guesses.include?(normalize_letter)
      guesses << normalize_letter
    end
  end

  def won?
    (normalized_letters(letters) - guesses).empty?
  end

  def letters
    word.text.chars
  end
end
