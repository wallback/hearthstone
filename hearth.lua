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
-- —татистика обща€ по классам в сводной таблице
-- —татистика по классам опонентов сводна€ дл€ всех дек в таблице
function ladder:print ()
  -- –азвернута€ статистика дл€ каждой деки
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

  -- —татистика дл€ всех дек совмещенна€
  print ("===================================")
  print ("           Deck stats")
  print ("-----------------------------------")
  for i,iv in pairs (self.decks) do
    print (i,string.format ("%3d %3d:%-3d %5.1f%%",iv[0]+iv[1],iv[1],iv[0],iv[1]*100/(iv[0]+iv[1])))
  end
  print ("===================================")

  -- —татистика по всем классам дл€ всех дек
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
