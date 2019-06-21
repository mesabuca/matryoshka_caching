class Book < ApplicationRecord
  belongs_to :author, touch: true
end
