FactoryBot.define do
  factory :dungeon do
    dungeon_type
    id { Faker::Number.unique.number }
    name { Faker::University.unique.name }
    size { 1 }
    themes { 'testing' }
    overview { 'overholt' }
    background { 'puce' }
    detail { Faker::Lorem.sentence }
  end

  factory :dungeon_type do
    id { Faker::Number.unique.number }
    name { Faker::Games::ElderScrolls.region }
    background { 'bad people doing bad things' }
    detail { Faker::Games::ElderScrolls.creature }
  end
end
