# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  has_many :appearances
  has_many :movies, through: :appearances

  def movie
    self.movies.order(release_date: :desc).first
  end
end
