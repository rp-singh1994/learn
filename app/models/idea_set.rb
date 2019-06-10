class IdeaSet < ApplicationRecord
	validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { in: 8..120 }
	has_many :items
	has_many :topic_idea_sets, dependent: :destroy
	has_many :topics, :through => :topic_idea_sets
	has_many :person_idea_sets, dependent: :destroy
	has_many :people, :through => :person_idea_sets
	accepts_nested_attributes_for :items, allow_destroy: true
	accepts_nested_attributes_for :topic_idea_sets, allow_destroy: true
	accepts_nested_attributes_for :person_idea_sets, allow_destroy: true
end