class Ragot < ApplicationRecord

  validate :content, length: { maximum: 140 }
end
