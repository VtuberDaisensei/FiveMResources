return {
	{
		coords = vec3(452.3, -991.4, 30.7),
		target = {
			loc = vec3(451.25, -994.28, 30.69),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = '個人ロッカーを開く'
		},
		name = 'policelocker',
		label = 'Personal locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},

	{
		coords = vector3(310.44, -597.67, 43.29),
		target = {
			loc = vector3(310.64, -597.67, 43.29),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = '個人ロッカーを開く'
		},
		name = 'emslocker',
		label = '個人ロッカー',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},
}
