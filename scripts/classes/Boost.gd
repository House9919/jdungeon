extends Object
class_name Boost
## This is used to store the boosts a player may obtain. Most common sources being items and status effects.
## These are meant to be temporary and may be deleted at any time.

#Stores an arbitrary amount of values
var statBoostDict: Dictionary

var hp_max: int = 0:
	set(val):
		statBoostDict["hp_max"] = val
	get:
		return statBoostDict.get("hp_max", 0 as int)

var hp: int = 0:
	set(val):
		statBoostDict["hp"] = val
	get:
		return statBoostDict.get("hp", 0 as int)

var attack_power_min: int = 0:
	set(val):
		statBoostDict["attack_power_min"] = val
	get:
		return statBoostDict.get("attack_power_min", 0 as int)

var attack_power_max: int = 0:
	set(val):
		statBoostDict["attack_power_max"] = val
	get:
		return statBoostDict.get("attack_power_max", 0 as int)

var defense: int = 0:
	set(val):
		statBoostDict["defense"] = val
	get:
		return statBoostDict.get("defense", 0 as int)


func add_boost(boost: Boost):
	hp_max += boost.hp_max
	attack_power_min += boost.attack_power_min
	attack_power_max += boost.attack_power_max

	defense += boost.defense


func set_stat_boost(statName: String, value: int):
	statBoostDict[statName] = value


func get_stat_boost(statName: String, default: int = 0):
	return statBoostDict.get(statName, default)
