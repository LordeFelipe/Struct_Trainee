class Music < ApplicationRecord
  belongs_to :album
  belongs_to :music_style
end
