FactoryBot.define do
  factory :dungeon do
    dungeon_type
    id { Faker::Number.unique.number }
    name { Faker::University.unique.name }
    size { Faker::Number.between(from: 0, to: 3) }
    themes { Faker::Lorem.unique.sentence }
    overview { Faker::Lorem.unique.sentence }
    background { Faker::Lorem.unique.sentence }
    detail { Faker::Lorem.sentence }
  end

  factory :dungeon_type do
    id { Faker::Number.unique.number }
    name { Faker::Games::ElderScrolls.region }
    background { 'bad people doing bad things' }
    detail { Faker::Games::ElderScrolls.creature }
  end

  factory :dungeon_area do
    dungeon
    id { Faker::Number.unique.number }
    description { Faker::Lorem.paragraph }
    dressing { Faker::Lorem.sentence }
    notes { Faker::Lorem.paragraph }
  end
end
