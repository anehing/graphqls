Types::BaseInterface  = GraphQL::InterfaceType.define do
	name "base"

	field :id, !types.ID
  	field :title, !types.String
    field :body, !types.String
end