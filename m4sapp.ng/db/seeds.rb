# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fosts = Fost.create(
	[
		{ 
			name: 'Cascades d\'Ouzoud', city: 'Azilal', shdes: 'Chutes d\'eau', category: 'cascade', plong: '23.34343', plalt: '32.243434', region: 'Tadla Azilal', description: 'Les cascades d\'Ouzoud sont des chutes d\'eau situées. À 120 km de Beni Mellal et 150 km de Marrakech, elles constituent une attraction touristique importante.'
		},
		{ 
			name: 'Oulmès', city: 'Khémisset', shdes: 'Chutes d\'eau', category: 'cascade', plong: '23.34343', plalt: '32.243434', region: 'Tadla Azilal', description: 'Les cascades d\'Ouzoud sont des chutes d\'eau situées. À 120 km de Beni Mellal et 150 km de Marrakech, elles constituent une attraction touristique importante.'
		},
		{ 
			name: 'Moulay Yacoub', city: 'Fès', shdes: 'Chutes d\'eau', category: 'cascade', plong: '23.34343', plalt: '32.243434', region: 'Tadla Azilal', description: 'Les cascades d\'Ouzoud sont des chutes d\'eau situées. À 120 km de Beni Mellal et 150 km de Marrakech, elles constituent une attraction touristique importante.'
		},
		{ 
			name: 'Oued Laou', city: 'Tétouan', shdes: 'Chutes d\'eau', category: 'cascade', plong: '23.34343', plalt: '32.243434', region: 'Tadla Azilal', description: 'Les cascades d\'Ouzoud sont des chutes d\'eau situées. À 120 km de Beni Mellal et 150 km de Marrakech, elles constituent une attraction touristique importante.'
		},
		{ 
			name: 'Oukaïmden', city: 'Marrakech', shdes: 'Chutes d\'eau', category: 'cascade', plong: '23.34343', plalt: '32.243434', region: 'Tadla Azilal', description: 'Les cascades d\'Ouzoud sont des chutes d\'eau situées. À 120 km de Beni Mellal et 150 km de Marrakech, elles constituent une attraction touristique importante.'
		},
		{ 
			name: 'Merzouga', city: 'Ouarzazat', shdes: 'Chutes d\'eau', category: 'cascade', plong: '23.34343', plalt: '32.243434', region: 'Tadla Azilal', description: 'Les cascades d\'Ouzoud sont des chutes d\'eau situées. À 120 km de Beni Mellal et 150 km de Marrakech, elles constituent une attraction touristique importante.'
		},
		{ 
			name: 'Ourika', city: 'Marrakech', shdes: 'Chutes d\'eau', category: 'cascade', plong: '23.34343', plalt: '32.243434', region: 'Tadla Azilal', description: 'Les cascades d\'Ouzoud sont des chutes d\'eau situées. À 120 km de Beni Mellal et 150 km de Marrakech, elles constituent une attraction touristique importante.'
		},
		{ 
			name: 'Martil', city: 'Tétouan', shdes: 'Chutes d\'eau', category: 'cascade', plong: '23.34343', plalt: '32.243434', region: 'Tadla Azilal', description: 'Les cascades d\'Ouzoud sont des chutes d\'eau situées. À 120 km de Beni Mellal et 150 km de Marrakech, elles constituent une attraction touristique importante.'
		},
	])

reviews = Review.create(
	[
		{
			stars: 5,
			body: "I love this product!",
			author: "joe@thomas.com",
			fost_id: 2
		},
		{
			stars: 1,
			body: "This product sucks",
			author: "tim@hater.com",
			fost_id: 2
		},
		{
			stars: 5,
			body: "I love this product!",
			author: "joe@thomas.com",
			fost_id: 3
		},
		{
			stars: 1,
			body: "This product sucks",
			author: "tim@hater.com",
			fost_id: 4
		},
	])