class Tweet < ApplicationRecord
    validates :message, length:{maximum: 14}, presence: true
end
