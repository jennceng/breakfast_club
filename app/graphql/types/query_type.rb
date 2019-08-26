module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_cereals, [CerealType], null: false
    field :cereal, CerealType, null: false do
      argument :cereal_id, ID, required: true, as: :id
    end

    # this method is invoked, when `all_cereals` fields is being resolved
    def all_cereals
      Cereal.all
    end

    def cereal(id:)
      Cereal.find(id)
    end
  end
end
