module Types
  class BlogType < Types::BaseObject
    name "Blog"
    field :id, ID, null: false
    field :title, String, null: true
    field :text, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    # field :title, String, null: true
    # field :text, String, null: true
  end
end
