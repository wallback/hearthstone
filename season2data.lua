function ladder:hunt1 ()
  local my="Hunt face"
  self:mage (my,1,0,1,0,0,0,1)
  self:warior (my,0)
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
  self:mage (my)
  self:warior (my)
  self:shaman (my)
  self:druid (my)
  self:priest (my)
  self:hunter (my)
  self:paladin (my)
  self:rogue (my)
  self:warlock (my)
end
--------------------------------------------------------------------------------------------------
function ladder:sham2 ()
  local my="Shaman blood"
  self:mage (my,0,1,1,0,0,1,0,0)
  self:warior (my,0,1,0)
  self:shaman (my)
  self:druid (my,1)
  self:priest (my,1,1)
  self:hunter (my,1,1,0,1,1,0)
  self:paladin (my,1,1,0,0)
  self:rogue (my,0,1)
  self:warlock (my,0,1,1,0,1)
end
--------------------------------------------------------------------------------------------------
function ladder:sham3 ()
  local my="Shaman agro"
  self:mage (my,0,0)
  self:warior (my,0)
  self:shaman (my)
  self:druid (my)
  self:priest (my)
  self:hunter (my)
  self:paladin (my)
  self:rogue (my)
  self:warlock (my)
end
--------------------------------------------------------------------------------------------------
function ladder:druid1 ()
  local my="Druid agro"
  self:mage (my,1,0)
  self:warior (my)
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
  self:mage (my,1,1,0,0)
  self:warior (my,1,1,1)
  self:shaman (my)
  self:druid (my,1,1,0)
  self:priest (my,1,0,0,1,1)
  self:hunter (my,1,1,0,0,0,0)
  self:paladin (my,1,0,0,1)
  self:rogue (my,1)
  self:warlock (my,1,1,0,1,0)
end

ladder:hunt1()
ladder:sham2()
ladder:druid1()
ladder:mage1()