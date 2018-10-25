require 'faker'

5.times do
	city = City.create!(
		name: Faker::Address.city
		)
end

25.times do
	dogwalker = Dogsitter.create!(
		city_id: Faker::Number.within(City.first.id..City.last.id)
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		)
end

25.times do
	dog = Dog.create!(
		name: Faker::Name.first_name,
		city_id: Faker::Number.within(City.first.id..City.last.id)
		)
end

50.times do
	stroll = Stroll.create!(
		city_id: Faker::Number.within(City.first.id..City.last.id),
		dogwalker_id: Faker::Number.within(Dogsitter.first.id..Dogsitter.last.id),
		date: Faker::Time.between(30.days.ago, Date.today, :day)
		)
end

Stroll.all.each do |stroll|
	rand(6).times {
		stroll.dogs << Faker::Number.within(Dog.first.id..Dog.last.id)
		}
end