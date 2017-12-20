class Photo
  include Mongoid::Document
  field :name, type: String
  field :url, type: String
  field :small, type: String
  field :medium, type: String
  field :large, type: String

  validates :name, uniqueness: true
  validates :small, uniqueness: true
  validates :medium, uniqueness: true
  validates :large, uniqueness: true
end
