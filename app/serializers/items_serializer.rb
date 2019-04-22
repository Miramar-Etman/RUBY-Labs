class ItemsSerializer < ActiveModel::Serializer
  attributes :item_name, :item_description
  def item_name
    object.name
  end
  def item_description
    object.description
  end
end