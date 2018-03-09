Types::PostType = GraphQL::ObjectType.define do
  name "Post"
  description "A blog post"
  # `!` marks a field as "non-null"
  interfaces [Types::BaseInterface]
  field :comments, types[!Types::CommentType]
end
