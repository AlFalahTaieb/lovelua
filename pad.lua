Pad = Entity:extend()

function Pad:new()
    Pad.super.new(self, 50, 100, 10, 100)
end

function Pad:update(dt)
    if love.keyboard.isDown('up') then
        self.ySpeed = -400
    elseif love.keyboard.isDown('down') then
        self.ySpeed = 400
    else
        self.ySpeed = 0
    end
    Pad.super.update(self, dt)
end
