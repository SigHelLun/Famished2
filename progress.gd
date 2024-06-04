extends Node



#position
var Kitchen = false;
var Store = false;
var Main;
func KitchenT():
	Kitchen = true
func KitchenF():
	Kitchen = false
func StoreT():
	Store = true
func StoreF():
	Store = false
#save alle globale variabler her
var Item1 = 0
var item2 = false
func item1Pick():
	Item1 = 1
func item1Drop():
	Item1 = 0


var pizza = false
var Rat = false
var Meat = false
var cookie = false

func hideC():
	cookie = false
func showC():
	cookie = true
	pizza = false
	Rat = false
	Meat = false
func hideP():
	pizza = false
func showP():
	pizza = true
	Rat = false
	Meat = false
	cookie = false
func hideR():
	Rat = false
func showR():
	Rat = true
	pizza = false
	cookie = false
	Meat = false
func hideMe():
	Meat = false
func showMe():
	Meat = true
	pizza = false
	cookie = false
	Rat = false
