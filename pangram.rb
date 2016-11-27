class Pangram
  class << self

    ALPHABET_LENGTH = [*('a'..'z')].count

    def pangram?(phrase)
      return false if phrase == ''
      matching_letters = clean_phrase(phrase)
      matching_letters == ALPHABET_LENGTH
    end

    def clean_phrase(phrase)
      phrase.chars.uniq.select { |character| character =~  /[[:alpha:]]/ }.count
    end
  end
end

module BookKeeping
  VERSION = 3
end
