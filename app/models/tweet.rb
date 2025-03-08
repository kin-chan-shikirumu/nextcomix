class Tweet < ApplicationRecord
  belongs_to :reader
  has_many :likes, dependent: :destroy
  has_many :liked_readers, through: :likes, source: :reader
  has_many :tweet_tag_relations, dependent: :destroy
  has_many :tags, through: :tweet_tag_relations, dependent: :destroy
  has_many :comments, dependent: :destroy
end
