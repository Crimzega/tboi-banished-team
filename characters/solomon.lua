local Solomon = {}

Solomon.Id = Isaac.GetPlayerTypeByName('Solomon')
Solomon.Stats = {
	Damage = 10,
	ShotSpeed = 6,
	TearHeight = 2,
	TearFallSpeed = 7,
	Speed = 1.42,
	Luck = -3,
	Flight = false,
	TearFlags = 0x80024, -- Homing, Freeze, Bounce
	TearColor = Color(0.88, 0.96, 1, 1.0, 0, 0, 0)
}

return Solomon