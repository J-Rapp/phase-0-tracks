# Nested data structure of a multi-floor apartment complex

apartment = {
	floor_1 = {
		units: 10
		residents: 11
		unit_types: [
			"Studio"
			"One Bedroom, One Bath"
		]
		filled => true
	}
	floor_2 = {
		units: 8
		residents: 16
		unit_types: [
			"One Bedroom, One Bath",
			"Two Bedroom, One Bath",
			"Two Bedroom, Two Bath"
		]
		filled => false
	}
	floor_3 = {
		units: 4
		residents: 6
		unit_types: [
			"Executive Loft"
		]
		filled => true
	}
	active_issues = [
		"Faucet leak in unit 206",
		"Clogged toilet in unit 301",
		"Lightbulb out in unit 110"
	]
}