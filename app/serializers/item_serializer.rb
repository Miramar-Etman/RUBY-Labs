class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :item_description
  def item_name
    object.name
  end
  def item_description
    object.description
  end
end