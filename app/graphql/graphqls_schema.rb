GraphqlsSchema = GraphQL::Schema.define do
  mutation(Types::MutationType)
  query(Types::QueryType)
	resolve_type ->(obj, ctx) do
	case obj
	when Post
	  Types::PostType
	when Comment
	  Types::CommentType
	else
	  raise("Don't know how to get the GraphQL type of a #{obj.class.name} (#{obj.inspect})")
	end
  end
end
