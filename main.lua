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
