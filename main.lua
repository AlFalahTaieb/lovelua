function love.load()
    -- listOfRec = {}
    -- require('rectangle')
    -- drawRectangle()
    Object = require 'classic'
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
