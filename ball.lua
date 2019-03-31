Ball = Entity:extend()

function Ball:new()
    Ball.super.new(self, 400, 300, 15, 15)
    self.xSpeed= 400
    self.ySpeed = -500
end

function Ball:update(dt)
Ball.super.update(self,dt)
end
