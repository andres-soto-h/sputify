class Album < ApplicationRecord
    has_many :song
    belongs_to :artist
end
