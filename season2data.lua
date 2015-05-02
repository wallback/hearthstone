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

ladder:hunt1()