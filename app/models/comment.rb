class Comment < ApplicationRecord
  belongs_to :reader
  belongs_to :tweet
end
