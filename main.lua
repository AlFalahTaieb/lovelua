-- function love.draw()
--     love.graphics.print("Hello World!", 400, 300)
--     end

-- function calcul(a,b)
--     return a+b
-- end

-- result=calcul(17,12)

-- function intro(name,job,age)
--     print('Hi My Name : '..name.." I'm a "..job.." and i'm "..age..' years old.')
-- end

-- print(intro('Chdoula','devCowboy','26'))

function love.load()
    x = 300
    y = 300
    -- move = 600
    drawRectangle()
end

function drawRectangle()
    rectangle = {}
    rectangle.width = 50
    rectangle.height = 50
    rectangle.x = 300
    rectangle.y = 200
    rectangle.speed=100
end
function drawCercle()
    love.graphics.setColor(1, 0, 0)
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

function love.update(dt)
    -- move(dt)
    rectangle.x = rectangle.x + rectangle.speed*dt
end

function love.draw()
    love.graphics.rectangle('line',rectangle.x,rectangle.y,rectangle.height,rectangle.width)
end
