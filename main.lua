function love.load()
    love.window.setTitle('Pong')
    -- listOfRec = {}
    -- require('rectangle')
    -- drawRectangle()
    Object = require 'classic'
    require('game')
    require('entity')
    require('pad')
    require('ball')

    game = Game()
end

-- function love.keypressed(key)
--     moveRectangle(key)
-- end
function love.update(dt)
    -- updateSpeed(dt)
    game:update(dt)
end

function love.draw()
    -- drawManyRec()
    game:draw()
end

function love.keypressed(k)
    if k == 'r' then
        love.load()
    end
end
