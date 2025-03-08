class Like < ApplicationRecord
  belongs_to :tweet
  belongs_to :reader
  validates_uniqueness_of :tweet_id, scope: :reader_id
end
