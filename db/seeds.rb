require './models/avalanche.rb'

Avalanche.create({
	date: "02-07-2016",
    state: "Colorado",
    region: "Berthoud Pass",
    avalanche_type: "slab",
    size_crown: "2ft",
    size_runout: "30ft",
    temperature: "3 degrees Fahrenheit",
    temperature_high_past_24hrs: "13 degrees Fahrenheit",
    temperature_low_past_24hrs: "-2 degrees Fahrenheit",
    percipitation: "2.5ft",
    wind_speed: "02mph",
    wind_direction: "SouthSouthwest",
    aspect: "NorthWest",
    elevation: "2,000",
    snowpack: "faceted",
    area_description: "The area was to the north of the approach",
   	route_description: "We veered left at second ridge",
    trigger: "human triggered",
    did_you_see_any_avalanches: "yes",
    did_you_trigger_any_avalanches: "yes",
    buried: "1",
    caught: "1",
    dead: "none",
    photo_url: "http//:www.photourl",
    langitude: 39.79833,
    longitude: -105.777
})

Avalanche.create({
	date: "03-11-2016",
    state: "Colorado",
    region: "MaroonBells Wilderness",
    avalanche_type: "wet-slide",
    size_crown: "no crown",
    size_runout: "60ft",
    temperature: "30 degrees Fahreinheit",
    temperature_high_past_24hrs: "37 degrees Fahreinheit",
    temperature_low_past_24hrs: "10 degrees Fahreinheit",
    percipitation: "none",
    wind_speed: "none",
    wind_direction: "north",
    aspect: "NorthWest",
    elevation: "13,000",
    snowpack: "Wet",
    area_description: "steep northwest aspect with moderate amounts of trees.",
   	route_description: "we approached from harpers lot and veered left at the first summit",
    trigger: "temperature change",
    did_you_see_any_avalanches: "yes",
    did_you_trigger_any_avalanches: "yes",
    buried: "two",
    caught: "two",
    dead: "one",
    photo_url: "http//:www.snowjpg",
    langitude: 39.111,
    longitude: -107.0206
    
})

Avalanche.create({
	date: "12-23-16",
    state: "Colorado",
    region: "Loveland Pass",
    avalanche_type: "slab",
    size_crown: "4.57ft",
    size_runout: "50ft",
    temperature: "12 degrees Fahrenheit",
    temperature_high_past_24hrs: "15 degrees Fahrenheit",
    temperature_low_past_24hrs: "3 degrees Fahrenheit",
    percipitation: "6ft",
    wind_speed: "5mph",
    wind_direction: "northwest",
    aspect: "north",
    elevation: "10,111ft",
    snowpack: "weak layer due to extended sunny periods",
    area_description: "northern area off the backside of edelveiss",
   	route_description: "we approached on the northridge and cut over above the rollover about halfway up.",
    trigger: "snowmobile",
    did_you_see_any_avalanches: "yes",
    did_you_trigger_any_avalanches: "yes",
    buried: "0",
    caught: "2",
    dead: "0",
    photo_url: "none",
    langitude: 39.6636,
    longitude: -105.879
    
})

Avalanche.create({
    date: "12-25-16",
    state: "Colorado",
    region: "Steamboat",
    avalanche_type: "slab",
    size_crown: "4.57ft",
    size_runout: "50ft",
    temperature: "12 degrees Fahrenheit",
    temperature_high_past_24hrs: "15 degrees Fahrenheit",
    temperature_low_past_24hrs: "3 degrees Fahrenheit",
    percipitation: "6ft",
    wind_speed: "13mph",
    wind_direction: "northwest",
    aspect: "south",
    elevation: "10,111ft",
    snowpack: "weak layer due to extended sunny periods",
    area_description: "northern area off the backside of big poppa",
    route_description: "we approached on the northridge and cut over above the rollover about halfway up.",
    trigger: "dog",
    did_you_see_any_avalanches: "oh yeah",
    did_you_trigger_any_avalanches: "yes",
    buried: "1 dog",
    caught: "2",
    dead: "1 dog",
    photo_url: "none",
    langitude: 40.475,
    longitude: -106
    
})

Avalanche.create({
    date: "12-24-16",
    state: "Colorado",
    region: "Buena Vista",
    avalanche_type: "wet slide",
    size_crown: "4.57ft",
    size_runout: "50ft",
    temperature: "12 degrees Fahrenheit",
    temperature_high_past_24hrs: "16 degrees Fahrenheit",
    temperature_low_past_24hrs: "3 degrees Fahrenheit",
    percipitation: "6ft",
    wind_speed: "34mph",
    wind_direction: "northwest",
    aspect: "north",
    elevation: "10,111ft",
    snowpack: "weak layer due to extended sunny periods and light barometric pressure",
    area_description: "northern area off the backside of edelveiss",
    route_description: "we approached on the northridge and cut over above the rollover about halfway up.",
    trigger: "natural event",
    did_you_see_any_avalanches: "yes",
    did_you_trigger_any_avalanches: "yes",
    buried: "0",
    caught: "0",
    dead: "0",
    photo_url: "none",
    langitude: 38.84,
    longitude: -106
    
})




