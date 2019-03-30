function drawCercle()
    love.graphics.setColor(love.math.random(), love.math.random(), love.math.random())
    love.graphics.circle('fill', x, y, 50, 100)
end

function move(dt)
    if love.keyboard.isDown('right') then
        x = x + 100 * dt
    end
    if love.keyboard.isDown('left') then
        x = x - 100 * dt
    end
    if love.keyboard.isDown('up') then
        y = y - 100 * dt
    end
    if love.keyboard.isDown('down') then
        y = y + 100 * dt
    end
end