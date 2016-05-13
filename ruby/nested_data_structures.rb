# Nested data structure of a multi-floor apartment complex

apartment = {
	floor_1: {
		units: 10,
		residents: 11,
		unit_types: [
			"Studio",
			"One Bedroom, One Bath"
		],
		filled: true,
		active_issues: [
			"Lightbulb out in unit 110",
			"Ceiling damage in unit 102"
		]
	},
	floor_2: {
		units: 8,
		residents: 16,
		unit_types: [
			"One Bedroom, One Bath",
			"Two Bedroom, One Bath",
			"Two Bedroom, Two Bath"
		],
		filled: false,
		active_issues: [
			"Faucet leak in unit 206"
		]
	},
	floor_3: {
		units: 4,
		residents: 6,
		unit_types: [
			"Executive Loft"
		],
		filled: true,
		active_issues: [
			"Clogged toilet in unit 301"
		]
	}
}

puts "Are the units on second floor filled?"
puts apartment[:floor_2][:filled]

puts "What unit types are there on the first floor?"
puts apartment[:floor_1][:unit_types]

puts "What are the current service issues for the builing?"
puts apartment[:floor_1][:active_issues]
puts apartment[:floor_2][:active_issues]
puts apartment[:floor_3][:active_issues]

puts "What two-bedroom unit types exist on the second floor?"
puts apartment[:floor_2][:unit_types][1]
puts apartment[:floor_2][:unit_types][2]