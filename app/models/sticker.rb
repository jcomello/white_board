class Sticker
  include Mongoid::Document

  field :title, type: String
  field :description, type: String

  validates :title, presence: true
end
