require "administrate/base_dashboard"

class DungeonTypeDashboard < Administrate::BaseDashboard

  def display_resource dungeon_type
    dungeon_type.name
  end
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    background: Field::String,
    detail: Field::String,
    backgrounds: Field::Text,
    details: Field::Text,
    connections: Field::Text,
    common_areas: Field::Text,
    unique_areas: Field::Text,
    features: Field::Text,
    finds: Field::Text,
    dressings: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :background,
    :detail,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :background,
    :detail,
    :backgrounds,
    :details,
    :connections,
    :common_areas,
    :unique_areas,
    :features,
    :finds,
    :dressings,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :background,
    :detail,
    :backgrounds,
    :details,
    :connections,
    :common_areas,
    :unique_areas,
    :features,
    :finds,
    :dressings,
  ].freeze

  # Overwrite this method to customize how dungeon types are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(dungeon_type)
  #   "DungeonType ##{dungeon_type.id}"
  # end
end
