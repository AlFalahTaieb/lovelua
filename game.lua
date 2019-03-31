Game = Object:extend()

function Game:new()
self.pad = Pad()
end

function Game:update(dt)
self.pad:update(dt)
end

function Game:draw()
  self.pad:draw()
end
