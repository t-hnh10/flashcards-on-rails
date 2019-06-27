class Flashcard < ApplicationRecord
    def self.create_flashcard(front, transliteration, back)
        flashcard = Flashcard.new(front: front, transliteration: transliteration, back: back)
        flashcard.save
        return flashcard
    end
end
