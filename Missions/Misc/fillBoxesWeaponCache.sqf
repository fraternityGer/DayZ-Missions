_crate = _this select 0;

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;


// 2 - 4 Weapons
_rndWeapons=floor(random 2);
for [{ x=0 },{ x < 2+_rndWeapons},{ x = x + 1; }] do
{ 
	_rndWeaponType=floor(random 5);
	if (_rndWeaponType == 0) 
	{
		_crate addWeaponCargoGlobal ["M4A3_CCO_EP1", 1];
	};
	if (_rndWeaponType == 1) 
	{
		_crate addWeaponCargoGlobal ["SVD_CAMO", 1];
	};
	if (_rndWeaponType == 2) 
	{
		_crate addWeaponCargoGlobal ["AK_74", 1];
	};
	if (_rndWeaponType == 3)
	{
		_crate addWeaponCargoGlobal ["DMR", 1];
	};
	if (_rndWeaponType == 4)
	{
		_crate addWeaponCargoGlobal ["M240", 1];
	};
};

// 30 - 60 Ammo Clips
_rndAmmoClip=floor(random 30);
for [{ x=0 },{ x < 30+_rndAmmoClip},{ x = x + 1; }] do
{ 
	_rndAmmoClipType=floor(random 5);
	if (_rndAmmoClipType == 0) 
	{
		_crate addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 1];
	};
	if (_rndAmmoClipType == 1) 
	{
		_crate addMagazineCargoGlobal ["30Rnd_556x45_StanagSD", 1];
	};
	if (_rndAmmoClipType == 2) 
	{
		_crate addMagazineCargoGlobal ["30Rnd_762x39_AK47", 1];
	};
	if (_rndAmmoClipType == 3) 
	{
		_crate addMagazineCargoGlobal ["20Rnd_762x51_DMR", 1];
	};
	if (_rndAmmoClipType == 4) 
	{
		_crate addMagazineCargoGlobal ["5Rnd_762x51_M24", 1];
	};
};

// 10 - 20 Big Ammo Clips
_rndBigAmmoClip=floor(random 10);
for [{ x=0 },{ x < 10+_rndBigAmmoClip},{ x = x + 1; }] do
{ 
	_rndBigAmmoClipType=floor(random 2);
	if (_rndBigAmmoClipType == 0) 
	{
		_crate addMagazineCargoGlobal ["Rnd_762x51_M240", 1];
	};
	if (_rndBigAmmoClipType == 1) 
	{
		_crate addMagazineCargoGlobal ["200Rnd_556x45_M249", 1];
	};
};

// 2 - 3 Backpacks
_rndBackpack=floor(random 1);
for [{ x=0 },{ x < 2+_rndBackpack},{ x = x + 1; }] do
{ 
	_rndBackpackType=floor(random 2);
	if (_rndBackpackType == 0) 
	{
		_crate addBackpackCargoGlobal ['DZ_Backpack_EP1', 1];
	};
	if (_rndBackpackType == 1) 
	{
		_crate addBackpackCargoGlobal ['DZ_ALICE_Pack_EP1', 1];
	};
};