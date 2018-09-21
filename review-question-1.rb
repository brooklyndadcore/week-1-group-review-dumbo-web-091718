## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]
# How would you get the url for Bulbasaur's ability?
# pokemon.each do |poke|
#   if poke[:name] == "bulbasaur"
#     p poke[:abilities][0][:ability][:url]
#   end
# end

# How would you return the first pokemon with base experience over 40?

# def find_first_poke(array)
#   just_first_over_40 = array.select { |poke| poke[:base_experience] > 40 }
# p just_first_over_40[0][:name]
# end
#
# find_first_poke(pokemon)

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
# def find_all_poke(array)
#   over_40 = array.select { |poke| poke[:base_experience] > 40 }
#  p over_40
# end
#
# find_all_poke(pokemon)
# How would you return an array of all of the pokemon's names?
# def poke_names(array)
#   names_arr = []
#   array.each {|poke| names_arr << poke[:name]}
#   p names_arr
# end
#
# poke_names(pokemon)

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
# def find_fatties(array)
#   array.each do |poke|
#     if poke[:weight] > 60
#       return true
#     end
#   end
#   return false
# end
#
# p find_fatties(pokemon)
 # whatever method you use should return true if there are any such pokemon, false if not.
