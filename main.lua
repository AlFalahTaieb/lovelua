function love.load()
    vsync = true
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
    love.graphics.setBackgroundColor(0.1, 0.1, 0.1)
    love.graphics.setColor(1, 1, 1, 1)

    gameState = 'main'

    -- Set the initial game mode
    gameMode = 'solo'
    love.audio.setVolume(0.20)


    sounds = {
        hit = love.audio.newSource('sounds/ping.ogg', 'static'),
        score = love.audio.newSource('sounds/pong.ogg', 'static')
    }
    -- secondaryPlayerSetup()
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
