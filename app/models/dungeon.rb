class Dungeon < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :dungeon_type
  has_many   :dungeon_areas, dependent: :delete_all

  def self.generate
    params = {
      name: TableGenerator.find_by_name('Dungeon name').generate,
      situation: TableGenerator.find_by_name('Dungeon situation').generate,
      ruin: TableGenerator.find_by_name('Dungeon ruin').generate,
      entrance_condition: TableGenerator.find_by_name('Dungeon entrance').generate,
      dungeon_type: random_dungeon_type,
      size: rand(0..3)
    }
    d = Dungeon.new(params)
    d.background = d.dungeon_type.random_background
    d.detail = d.dungeon_type.random_detail
    d.generate_areas
    d.generate_diagram
    d.generate_themes
    d
  end

  # if the dungeon type or size are changed, then regenerate the dungeon areas
  def update_and_generate params
    reset_area = params[:dungeon_type_id].to_i != dungeon_type_id
    regenerate_areas = false
    regenerate_areas = true if params[:size].to_i != size || reset_area
    ret = update(params)
    if regenerate_areas
      dungeon_areas.delete_all
      generate_areas
      generate_diagram
      generate_themes
      if reset_area
        self.background = dungeon_type.random_background
        self.detail = dungeon_type.random_detail
      end
      ret = save
    end
    ret
  end

  def self.random_dungeon_type
    DungeonType.order('RANDOM()').limit(1).first
  end

  def generate_themes
    t = ''
    generator = TableGenerator.find_by_name 'Dungeon theme'
    (size+2).times do
      t << generator.generate
      t << "; "
    end
    self.themes = t
  end

  def generate_diagram
    diagram = ''
    candidates = []
    first = true
    dungeon_areas.each do |area|
      diagram << "#{area.id}[\"#{area.description}\"]\n"
      diagram << "click #{area.id} \"#{edit_dungeon_area_path(area)}\" \"Go to area\"\n"
      if first
        first = false
        diagram << "style #{area.id} fill:#9C9,stroke-width:6px\n"
      else
        diagram << "style #{area.id} fill:#f9f,stroke-width:4px\n" if area.unique
        entrances = rand(1..([3, candidates.size].min))
        entrances.times do
          connection = dungeon_type.random_connection
          target = candidates[rand(candidates.size)]
          diagram << "#{target}---|#{connection}|#{area.id}\n"
        end
      end
      candidates << area.id
      candidates.shift if candidates.size > 10
    end
    self.area_diagram = diagram
  end

  def generate_areas
    s = size
    uniq_total = [1,2 ** s + rand(s-1..s+1)].max
    uniq_total = 11 if uniq_total > 11
    uniq_count = 0
    uniq_prob = 0
    uniques = []

    while(uniq_count < uniq_total)
      area, unique = dungeon_type.generate_area uniq_prob, uniques
      if unique
        uniques << area.description
        uniq_count += 1
        uniq_prob = 0
      else
        uniq_prob += 0.15
      end
      dungeon_areas << area
      area.save
    end
  end

end
