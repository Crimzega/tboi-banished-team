local Ellyse = {}

Ellyse.Id = Isaac.GetPlayerTypeByName('Ellyse')
Ellyse.Stats = {
	Damage = 4.3,
	ShotSpeed = 2,
	TearHeight = 7,
	TearFallSpeed = 9,
	Speed = 0.7,
	Luck = -3,
	Flight = false,
	TearFlags = 0x3001, -- Confusion, Charm, Piercing
	TearColor = Color(0.75, 0.0, 0.75, 1.0, 0, 0, 0)
}

return Ellyse
