Game = Object:extend()

function Game:new()
self.padGauche = Pad()
self.padDroite = Pad()
self.padDroite.x = 740
self.padDroite.keyUp="z"
self.padDroite.keyDown="s"
end

function Game:update(dt)
self.padDroite:update(dt)
self.padGauche:update(dt)
end

function Game:draw()
  self.padGauche:draw()
  self.padDroite:draw()
end