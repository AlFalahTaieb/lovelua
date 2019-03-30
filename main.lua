
function love.load()
    -- x = 300
    -- y = 300
    listOfRec = {}
    -- move = 600
    require('rectangle')
    drawRectangle()
end




function love.keypressed(key)
    moveRectangle(key)
end
function love.update(dt)
    updateSpeed(dt)
end

function love.draw()
    drawManyRec()
end
