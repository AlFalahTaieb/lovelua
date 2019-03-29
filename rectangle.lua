function drawRectangle()
    r = love.math.random()
    g = love.math.random()
    b = love.math.random()
    love.graphics.setColor(r, g, b)
    rectangle = {}
    rectangle.width = 50
    rectangle.height = 50
    rectangle.x = 300
    rectangle.y = 200
    rectangle.speed = 100
    return rectangle
end


