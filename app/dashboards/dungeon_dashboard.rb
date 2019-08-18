require "administrate/base_dashboard"

class DungeonDashboard < Administrate::BaseDashboard

  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    dungeon_type: Field::BelongsTo,
    dungeon_areas: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    size: Field::Number,
    themes: Field::String,
    overview: Field::String,
    background: Field::String,
    detail: Field::String,
    situation: Field::String,
    entrance_condition: Field::String,
    ruin: Field::String,
    area_diagram: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :dungeon_type,
    :dungeon_areas,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :name,
    :dungeon_type,
    :overview,
    :background,
    :detail,
    :situation,
    :ruin,
    :entrance_condition,
    :size,
    :themes,
    :dungeon_areas,
    :area_diagram,
    :id,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :dungeon_type,
    :dungeon_areas,
    :size,
    :themes,
    :overview,
    :background,
    :detail,
    :situation,
    :entrance_condition,
    :ruin,
    :area_diagram,
  ].freeze

  def display_resource dungeon
    dungeon.name
  end
end
