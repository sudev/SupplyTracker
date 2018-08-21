ItemCategory.seed(:code,
	{
		:code=>'food', :name=>'Food',
		item_types_attributes:[	  
			{:code=>'cand', :name=>'Candles'},
			{:code=>'coco', :name=>'Cocunut oil'},
			{:code=>'chilp', :name=>'Chilli powder'},
			{:code=>'tump', :name=>'Turmeric powder'},
			{:code=>'gram', :name=>'Grams'},
			{:code=>'bean', :name=>'Beans'},
			{:code=>'cere', :name=>'Cereals'},
			{:code=>'babf', :name=>'Baby food packet'},
			{:code=>'bisk', :name=>'Biscuit packet'},
			{:code=>'ccnt', :name=>'Coconut'},
			{:code=>'cori', :name=>'Coriander Powder'},
			{:code=>'dhal', :name=>'Dal'},
			{:code=>'egg', :name=>'Egg'},
			{:code=>'rice', :name=>'Rice'},
			{:code=>'whea', :name=>'Wheat'},
			{:code=>'ggram', :name=>'Green Gram'},
			{:code=>'gnut', :name=>'Ground Nut'},
			{:code=>'pulse', :name=>'Pulses'},
			{:code=>'sambar', :name=>'Sambar Powder'},
			{:code=>'ruck', :name=>'Rusk'},
			{:code=>'salt', :name=>'Salt'},
			{:code=>'sugr', :name=>'Sugar'},
			{:code=>'tea', :name=>'Tea/coffee powder'},
			{:code=>'tumeric', :name=>'Turmeric Powder'},
			{:code=>'jagg', :name=>'Jaggery'},
			{:code=>'ptto', :name=>'Potato'},
			{:code=>'onion', :name=>'Onion'},
			{:code=>'vegg', :name=>'Vegetables'},
			{:code=>'smilk', :name=>'Skimmed Milk Powder'}
		]
	},
	{ 
		:code=>'med', :name=>'Medicine',
		item_types_attributes:[
			{:code=>'glov', :name=>'Gloves'},
			{:code=>'mask', :name=>'Mask'},
			{:code=>'ors', :name=>'ORS packets/ electrolytes'},
			{:code=>'detl', :name=>'Dettol/Antiseptic-Lotion Bottles'}
		]
	},
	{
		:code=>'stty', :name=>'Stationary',
		item_types_attributes:[
			{:code=>'torh', :name=>'Torch'},
			{:code=>'batty', :name=>'Batteries'},
			{:code=>'snap', :name=>'Sanitary Napkins'},
			{:code=>'towl', :name=>'Towels'},
			{:code=>'replnt', :name=>'Mosquitoe repellents/Odomos Packets'}
		]
	},
	{
		:code=>'clth', :name=>'Cloth',
		item_types_attributes:[
			{:code=>'bedsht', :name=>'Blanket / Bedsheet'},
			{:code=>'undr', :name=>'Undergarments'},
			{:code=>'lungi', :name=>'Lungi / Dhoti'},
			{:code=>'babyd', :name=>'Baby diapers'},
			{:code=>'adultpr', :name=>'Adult Diapers'},
			{:code=>'nighty', :name=>'Nighties'},
			{:code=>'ldiw', :name=>'Ladies inner wear'},
			{:code=>'sandal', :name=>'Chappal/Sandals'}
		]
	},
	{
		:code=>'watr', :name=>'Water',
		item_types_attributes:[
			{:code=>'dwtr', :name=>'Drinking water'}
		]
	},
	{
		:code=>'othr', :name=>'Others',
		item_types_attributes:[
			{:code=>'fmat', :name=>'Floor Mat'},
			{:code=>'smat', :name=>'Sleeping Mat'}
		]
	}
	
)
