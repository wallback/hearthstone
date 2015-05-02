function ladder:hunt1 ()
  local my="Hunt face"
  self:mage (my,1,0,1)
  self:warior (my)
  self:shaman (my)
  self:druid (my,1,1)
  self:priest (my)
  self:hunter (my,1,0)
  self:paladin (my,1)
  self:rogue (my)
  self:warlock (my,1)
end

ladder:hunt1()