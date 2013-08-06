class User < ActiveRecord::Base
  has_many :tweets

  #returns a list of relationships to users that this user follows
  has_many :following_relationships, class_name: 'Relationship', foreign_key: 'following_user_id'

  #returns a list of relationships to users that follow this user
  has_many :followed_by_relationships, class_name: 'Relationship', foreign_key: 'followed_user_id'

  #define a method that returns a lists of tweets for a user's stream
  def stream
    tweets = []
    self.following_relationships.each do |relationship|
      tweets << relationship.followed_user.tweets
    end
    return tweets.flatten
  end
end
