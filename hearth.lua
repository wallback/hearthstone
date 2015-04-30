ladder=
{
  decks={}
}

--------------------------------------------------------------------------------------------------

function ladder:game (my,vs,...)
  if not self.decks[my] then self.decks[my]={[0]=0,[1]=0,games={}} end
  if not self.decks[my].games[vs] then self.decks[my].games[vs]={[0]=0,[1]=0} end
  local games={...}
  for i,v in pairs (games) do
    self.decks[my].games[vs][v]=self.decks[my].games[vs][v]+1
    self.decks[my][v]=self.decks[my][v]+1
  end
end

--------------------------------------------------------------------------------------------------

function ladder:mage (my,...) self:game (my,"Mage",...) end
function ladder:warior (my,...) self:game (my,"Warior",...) end
function ladder:shaman (my,...) self:game (my,"Shaman",...) end
function ladder:druid (my,...) self:game (my,"Druid",...) end
function ladder:priest (my,...) self:game (my,"Priest",...) end
function ladder:hunter (my,...) self:game (my,"Hunter",...) end
function ladder:paladin (my,...) self:game (my,"Paladin",...) end
function ladder:rogue (my,...) self:game (my,"Rogue",...) end
function ladder:warlock (my,...) self:game (my,"Warlock",...) end

--------------------------------------------------------------------------------------------------
--{
  -- ["deck1"]=
 -- {
  --  games=
--      {
  --     ["mage"]= {["Игр"]=10,[1]=10,[0]=4}
    --  }
 -- }
--}
-- Статистика общая по классам в сводной таблице
-- Статистика по классам опонентов сводная для всех дек в таблице
function ladder:print1 ()
  -- Развернутая статистика для каждой деки
  for i,iv in pairs (self.decks) do
    print ("================================")
    print (i)
    print ("--------------------------------")
    local lose,win=0,0
    for j,jv in pairs (iv.games) do
      lose=lose+jv[0]
      win=win+jv[1]
      print (j,jv[0]+jv[1],jv[1]..":"..jv[0])
    end
    print ("--------------------------------")
    print ("Total",lose+win,win..":"..lose,string.format ("%.1f",win*100/(lose+win)).."%")
    print ("================================")
  end

  -- Статистика для всех дек совмещенная
  print ("===================================")
  print ("           Deck stats")
  print ("-----------------------------------")
  for i,iv in pairs (self.decks) do
    print (i,string.format ("%3d %3d:%-3d %5.1f%%",iv[0]+iv[1],iv[1],iv[0],iv[1]*100/(iv[0]+iv[1])))
  end
  print ("===================================")

  -- Статистика по всем классам для всех дек
  local vs={"Mage","Warrior","Shaman","Druid","Priest","Hunter","Paladin","Rogue","Warlock"}
  local stat={}
  local all={[0]=0,[1]=0}
  for i,iv in pairs (self.decks) do
    for j,jv in pairs (iv.games) do
      if not stat[j] then stat[j]={[0]=0,[1]=0} end
      stat[j][0]=stat[j][0]+jv[0]
      stat[j][1]=stat[j][1]+jv[1]
      all[0]=all[0]+jv[0]
      all[1]=all[1]+jv[1]
    end
  end
  print ("===================================")
  print ("           Class stats")
  print ("-----------------------------------")
  for i,iv in pairs (stat) do
    if iv[0]+iv[1]~=0 then 
      print (i,self:getstats (iv[0],iv[1]))
    end
  end
  print ("-----------------------------------")
  print ("Total",self:getstats (all[0],all[1]))
  print ("===================================")
end
--------------------------------------------------------------------------------------------------

function ladder:getstats (lose,win)
  return string.format ("%3d %3d:%-3d %5.1f%%",win+lose,win,lose,win*100/(win+lose))
end

--------------------------------------------------------------------------------------------------
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
  self:mage (my,1)
  self:warior (my,0)
  self:shaman (my)
  self:druid (my,1)
  self:priest (my)
  self:hunter (my,0)
  self:paladin (my,1,0,1,0)
  self:rogue (my)
  self:warlock (my,0,0)
end
--------------------------------------------------------------------------------------------------
function ladder:druid2 ()
  local my="Druid tank"
  self:mage (my)
  self:warior (my)
  self:shaman (my,1)
  self:druid (my)
  self:priest (my,0)
  self:hunter (my,0,1)
  self:paladin (my,0,0,0)
  self:rogue (my)
  self:warlock (my,1,0,1)
end
--------------------------------------------------------------------------------------------------
function ladder:lock1 ()
  local my="Warlock demon"
  self:mage (my)
  self:warior (my,1,1)
  self:shaman (my)
  self:druid (my,1,0)
  self:priest (my,0,1)
  self:hunter (my,1,0,1)
  self:paladin (my)
  self:rogue (my,1)
  self:warlock (my)
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
--------------------------------------------------------------------------------------------------
ladder:sham1()
ladder:sham2()
ladder:hunt1()
ladder:druid1()
ladder:druid2()
ladder:lock1()
ladder:hunt2()

ladder:print1()
