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
    listOfRec = {}
    -- move = 600
    require('rectangle')
    drawRectangle()
end


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

function love.keypressed(key)
    if key == 'space' then
        table.insert(listOfRec, drawRectangle())
    end
end
function love.update(dt)
    for i, v in ipairs(listOfRec) do
        v.x = v.x + v.speed * dt
    end
end

function love.draw()
    for i, v in ipairs(listOfRec) do
        love.graphics.rectangle('line', v.x, v.y, v.height, v.width)
    end
end
