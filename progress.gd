extends Node



#position
var Kitchen = false;
var Main;
func KitchenT():
	Kitchen = true
func KitchenF():
	Kitchen = false
#save alle globale variabler her
var Item1 = 0
var item2 = false
func item1Pick():
	Item1 = 1
func item1Drop():
	Item1 = 0


var money = false
var pizza = false
var Rat = false
var Meat = false
var cookie = false

func hideC():
	cookie = false
func showC():
	cookie = true
func hideM():
	money = false
func showM():
	money = true
func hideP():
	pizza = false
func showP():
	pizza = true
	Rat = false
	Meat = false
func hideR():
	Rat = false
func showR():
	Rat = true
	money = false
	pizza = false
func hideMe():
	Meat = false
func showMe():
	Meat = true
	money = false
	pizza = false
