data:extend({
	{
		type = "ammo",
		name = "depleted-uranium-magazine",
		localised_name = {'ammo-names.depleted-uranium-magazine'},
		icon = "__More_Gun__/graphics/icons/depleted-uranium-magazine.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
							type = "create-explosion",
							entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-hit"
						},
						{
							type = "damage",
							damage = { amount = 20 , type = "physical"}
						}
					}
				}
			}
		},
		magazine_size = 15,
		subgroup = "ammo",
		order = "a[basic-clips]-b[depleted-uranium-magazine]",
		stack_size = 150
	},
	{
		type = "recipe",
		name = "depleted-uranium-magazine",
		localised_name = {'ammo-names.depleted-uranium-rounds'},
		icon = "__More_Gun__/graphics/icons/depleted-uranium-magazine.png",
		energy_required = 20,
		enabled = false,
		category = "chemistry",
		ingredients =
		{
			{type="item", name="iron-plate", amount=6},
			{type="item", name="coal", amount=6},
			{type="item", name="copper-plate", amount=6},
			{type="item", name="sulfur", amount=6},
		},
		result= "depleted-uranium-magazine"
	},
	{
		type = "technology",
		name = "depleted-uranium-rounds",
		icon = "__More_Gun__/graphics/icons/depleted-uranium-magazine.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "depleted-uranium-magazine"
			},
		},
		prerequisites = {"military-2", 'advanced-material-processing-2', 'sulfur-processing'},
		unit = {
			count = 100,
			ingredients =
			{
				{"science-pack-1", 3},
				{"science-pack-2", 3},
				{"science-pack-3", 3},
				{"alien-science-pack", 1},
			},
			time = 10
		},
		order = "e-a-b"
	},
})