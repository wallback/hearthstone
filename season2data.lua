function ladder:hunt1 ()
  local my="Hunt face"
  self:mage (my,1,0,1,0,0,0,1)
  self:warrior (my,0)
  self:shaman (my)
  self:druid (my,1,1,1,0,0,0)
  self:priest (my,1)
  self:hunter (my,1,0,1,0,1)
  self:paladin (my,1,1)
  self:rogue (my,1,0)
  self:warlock (my,1,1,0,1,1)
end
--------------------------------------------------------------------------------------------------
function ladder:sham1 ()
  local my="Shaman mech"
  self:mage (my,1,1,1,1,0,1,1,0)
  self:warrior (my,1,0,1,1,1)
  self:shaman (my,0,1)
  self:druid (my,1,1,1,1,1,1)
  self:priest (my,1)
  self:hunter (my,0)
  self:paladin (my,0,1,1,0)
  self:rogue (my,1)
  self:warlock (my,0,1,0,0,0,1)
end
--------------------------------------------------------------------------------------------------
function ladder:sham2 ()
  local my="Shaman blood"
  self:mage (my,0,1,1,0,0,1,0,0)
  self:warrior (my,0,1,0)
  self:shaman (my)
  self:druid (my,1)
  self:priest (my,1,1)
  self:hunter (my,1,1,0,1,1,0)
  self:paladin (my,1,1,0,0)
  self:rogue (my,0,1)
  self:warlock (my,0,1,1,0,1)
end
--------------------------------------------------------------------------------------------------
function ladder:druid1 ()
  local my="Druid agro"
  self:mage (my,1,0)
  self:warrior (my)
  self:shaman (my)
  self:druid (my,0,1,0)
  self:priest (my,0)
  self:hunter (my)
  self:paladin (my)
  self:rogue (my)
  self:warlock (my,0)
end
--------------------------------------------------------------------------------------------------
function ladder:mage1 ()
  local my="Mage mech"
  self:mage (my,1,1,0,0,0)
  self:warrior (my,1,1,1,0)
  self:shaman (my)
  self:druid (my,1,1,0,1)
  self:priest (my,1,0,0,1,1)
  self:hunter (my,1,1,0,0,0,0)
  self:paladin (my,1,0,0,1)
  self:rogue (my,1)
  self:warlock (my,1,1,0,1,0)
end
--------------------------------------------------------------------------------------------------
function ladder:warlock1 ()
  local my="Warlock combo"
  self:mage (my,0)
  self:warrior (my,0)
  self:shaman (my,0)
  self:druid (my,0,0,0,0)
  self:priest (my,0,0)
  self:hunter (my,1,1,0,0,1)
  self:paladin (my,1)
  self:rogue (my)
  self:warlock (my,1,1,0,0)
end
--------------------------------------------------------------------------------------------------
function ladder:warlock2 ()
  local my="Warlock demon"
  self:mage (my)
  self:warrior (my,0)
  self:shaman (my)
  self:druid (my,0)
  self:priest (my,1,1)
  self:hunter (my)
  self:paladin (my)
  self:rogue (my,1)
  self:warlock (my,0)
end
--------------------------------------------------------------------------------------------------
function ladder:rogue1 ()
  local my="Rogue mech"
  self:mage (my,0)
  self:warrior (my,0,0)
  self:shaman (my)
  self:druid (my)
  self:priest (my)
  self:hunter (my)
  self:paladin (my,0)
  self:rogue (my)
  self:warlock (my,0,0)
end
--------------------------------------------------------------------------------------------------
function ladder:druid3 ()
  local my="Druid fatigue"
  self:mage (my,0,0)
  self:warrior (my)
  self:shaman (my)
  self:druid (my)
  self:priest (my,1)
  self:hunter (my,1)
  self:paladin (my,0,1)
  self:rogue (my)
  self:warlock (my,0,0,0,1,1)
end
--------------------------------------------------------------------------------------------------
function ladder:hunt2 ()
  local my="Hunt beast"
  self:mage (my,0,0)
  self:warrior (my)
  self:shaman (my)
  self:druid (my)
  self:priest (my)
  self:hunter (my,1)
  self:paladin (my,0)
  self:rogue (my,1)
  self:warlock (my,1,1,0,1,1,1)
end

--------------------------------------------------------------------------------------------------
ladder:hunt1()
ladder:sham2()
ladder:druid1()
ladder:mage1()
ladder:sham1()
ladder:warlock1()
ladder:warlock2()
ladder:rogue1()
ladder:druid3()
ladder:hunt2()
--------------------------------------------------------------------------------------------------
IM="Druid taunt"
Mage(0)
Hunter(1)
Mage(1,1)
Warrior(0)
Warlock(0)
Mage(0)
Paladin(0)

IM="Druid fatigue"
Shaman(1)
Paladin(0)
Hunter(0)
Mage(0)

IM="Warlock combo"
Warlock(0,0)
Hunter(1)
Warrior(0)
Mage(1)
Paladin(1)
Druid(1)
Hunter(1)
Paladin(1)
Druid(1)
Paladin(1)
Rogue(0)
Hunter(1)
Paladin(0)
Priest(0,1)
Paladin(1)
--------------------------------------------------------------------------------------------------
