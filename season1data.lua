function ladder:sham1 ()
  local my="Shaman mech"
  self:mage (my,0,1)
  self:warior (my,1,1)
  self:shaman (my)
  self:druid (my)
  self:priest (my,0,0,1,0)
  self:hunter (my,1,0,0)
  self:paladin (my,0,1,0)
  self:rogue (my,1,1)
  self:warlock (my,1,1)
end
--------------------------------------------------------------------------------------------------
function ladder:sham2 ()
  local my="Shaman blood"
  self:mage (my,1,0,0,0,1)
  self:warior (my)
  self:shaman (my,1)
  self:druid (my)
  self:priest (my)
  self:hunter (my,0)
  self:paladin (my)
  self:rogue (my)
  self:warlock (my,1,1,1)
end
--21-93-49
--8-937-449-39-497
--аникин
--8-951-358-58-10
--------------------------------------------------------------------------------------------------
function ladder:hunt1 ()
  local my="Hunt face"
  self:mage (my,1,0,1,1,0,1,0,1,0,0,0,0,0)
  self:warior (my,1,0,0)
  self:shaman (my,0,1,1)
  self:druid (my,1,0,1)
  self:priest (my,1,1)
  self:hunter (my,1,0,1,1,0,1,1,0,0,1)
  self:paladin (my,1,0,1,1,0,0,1,0,0,1)
  self:rogue (my,0,1,1,1,1,1,0,1)
  self:warlock (my,0,1,0,1,0,1)
end
--------------------------------------------------------------------------------------------------
function ladder:druid1 ()
  local my="Druid agro"
  self:mage (my,1,1)
  self:warior (my,0,1)
  self:shaman (my)
  self:druid (my,1,1)
  self:priest (my)
  self:hunter (my,0,0,0)
  self:paladin (my,1,0,1,0,0)
  self:rogue (my)
  self:warlock (my,0,0,0,0)
end
--------------------------------------------------------------------------------------------------
function ladder:druid2 ()
  local my="Druid tank"
  self:mage (my,0)
  self:warior (my)
  self:shaman (my,1)
  self:druid (my)
  self:priest (my,0,1)
  self:hunter (my,0,1,1)
  self:paladin (my,0,0,0)
  self:rogue (my)
  self:warlock (my,1,0,1)
end
--------------------------------------------------------------------------------------------------
function ladder:lock1 ()
  local my="Warlock demon"
  self:mage (my,0)
  self:warior (my,1,1)
  self:shaman (my)
  self:druid (my,1,0)
  self:priest (my,0,1)
  self:hunter (my,1,0,1,0)
  self:paladin (my,0)
  self:rogue (my,1)
  self:warlock (my,1,0,0)
end
--------------------------------------------------------------------------------------------------
function ladder:hunt2 ()
  local my="Hunt beast"
  self:mage (my,1,0,0)
  self:warior (my,0)
  self:shaman (my,1)
  self:druid (my,1,0)
  self:priest (my)
  self:hunter (my,1,0)
  self:paladin (my)
  self:rogue (my)
  self:warlock (my,1)
end
--------------------------------------------------------------------------------------------------
function ladder:priest1 ()
  local my="Priest antirush"
  self:mage (my)
  self:warior (my)
  self:shaman (my)
  self:druid (my)
  self:priest (my,0)
  self:hunter (my,1,0)
  self:paladin (my,0)
  self:rogue (my)
  self:warlock (my)
end
--------------------------------------------------------------------------------------------------
ladder:sham1()
ladder:sham2()
ladder:hunt1()
ladder:druid1()
ladder:druid2()
ladder:lock1()
ladder:hunt2()
ladder:priest1()
