class DungeonType < ApplicationRecord
  def generate_area unique_prob, used_uniques
    area_desc = nil
    unique = unique_prob > rand
    if unique
      while area_desc == nil
        area_desc = random_unique_area
        area_desc = nil if used_uniques.include? area_desc
      end
    else
      area_desc = random_area
    end

#    area_desc.gsub!(/[()]/,'')

    dangers = ''

    if rand < 0.666
      dangers += TableGenerator.find_by_name("Dungeon danger").generate + "; "
    end

    discoveries = ''
    discovery_count = rand(0..3)
    discovery_count.times do
      discoveries += random_discovery + "; "
    end

    params = {
      description: area_desc,
      dangers: dangers,
      discoveries: discoveries,
      unique: unique,
      dressing: random_dressing
    }
    return DungeonArea.new(params), unique
  end

  def random_background
    Generator.table_generate backgrounds
  end

  def random_detail
    Generator.table_generate details
  end


  def random_area
    Generator.table_generate common_areas
  end

  def random_unique_area
    Generator.table_generate unique_areas
  end

  def random_connection
    Generator.table_generate connections
  end

  def random_discovery
    if rand() < 0.333
      random_feature
    else
      random_find
    end
  end

  def random_feature
    Generator.table_generate features
  end

  def random_find
    Generator.table_generate finds
  end

  def random_dressing
    Generator.table_generate dressings
  end
end
