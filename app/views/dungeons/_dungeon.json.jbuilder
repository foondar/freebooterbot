json.extract! dungeon, :id, :name, :size, :themes, :overview, :dungeon_type_id, :background, :detail, :created_at, :updated_at
json.url dungeon_url(dungeon, format: :json)
