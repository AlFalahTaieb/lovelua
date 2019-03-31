Entity = Object:extend()

function Entity:new(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.xSpeed = 0
    self.ySpeed = 0
end

function Entity:update(dt)
    self.x = self.x + self.xSpeed * dt
    self.y = self.y + self.ySpeed * dt
end

function Entity:draw()
    r = love.math.random()
    g = love.math.random()
    b = love.math.random()
    love.graphics.setColor(r, g, b)
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end
