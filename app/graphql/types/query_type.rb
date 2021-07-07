module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :blog, !Types::BlogType do
    resolve ->(_obj, _args, ctx) {
      ctx[:blog]
    }
  end

  # description "The query root of this schema"
  # # First describe the field signature:
  # field :blog, BlogType, null: true do
  #   description "Find a post by ID"
  #   argument :id, ID, required: true
  # end
  #
  # # Then provide an implementation:
  # def blog(id:)
  #   Blog.find(id)
  # end
  end
end
