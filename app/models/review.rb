class Review < ApplicationRecord
  belongs_to :partner
  belongs_to :client
end
