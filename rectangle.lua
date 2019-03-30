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

function moveRectangle(key)
    if key == 'space' then
        table.insert(listOfRec, drawRectangle())
    end
end

function updateSpeed(dt)
    for i, v in ipairs(listOfRec) do
        v.x = v.x + v.speed * dt
    end
end


function drawManyRec()
    for i, v in ipairs(listOfRec) do
        love.graphics.rectangle('line', v.x, v.y, v.height, v.width)
    end
end
