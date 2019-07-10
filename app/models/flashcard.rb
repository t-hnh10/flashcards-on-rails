class Flashcard < ApplicationRecord
    belongs_to :user
    
    def self.create_flashcard(front, transliteration, back, current_user)
        flashcard = Flashcard.new(front: front, transliteration: transliteration, back: back, user: current_user)
        flashcard.save
        if flashcard.valid? == false
            logger.info current_user.inspect
        end
        return flashcard
    end
end
