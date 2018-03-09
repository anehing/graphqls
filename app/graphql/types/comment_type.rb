Types::CommentType = GraphQL::ObjectType.define do
  name "Comment"
  interfaces [Types::BaseInterface]
  field :created_at, !types.String
end
