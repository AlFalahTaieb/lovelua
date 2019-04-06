Game = Object:extend()
smallFont = love.graphics.newFont('fonts/pong.ttf', 8)
largeFont = love.graphics.newFont('fonts/pong.ttf', 16)
scoreFont = love.graphics.newFont('fonts/pong.ttf', 32)
mouse = {}

function Game:new()
    self.padGauche = Pad('left')
    self.padDroite = Pad('right')
    self.padDroite.x = 740
    -- self.padDroite.keyUp = 'z'
    -- self.padDroite.keyDown = 's'
    self.ball = Ball()
    self.scoreGauche = 0
    self.scoreDroite = 0
end

function Game.load()
    self.padDroit.speed = 300
end

function Game:update(dt)
    -- mouse.x, mouse.y = love.mouse.getPosition()
    if self.padDroite.y < self.ball.y then
        self.padDroite.y = self.padDroite.y + (self.padDroite.y * 2.5 * dt)
    end
    if self.padDroite.y > self.ball.y then
        self.padDroite.y = self.padDroite.y - (self.padDroite.y * 2.5 * dt)
    end
    self.padDroite:update(dt)
    self.padGauche:update(dt)
    self.ball:update(dt)
    self.ball:bounce(self.padDroite)
    self.ball:bounce(self.padGauche)

    local ball_stat = self.ball:checkScreen()
    if ball_stat == 'left' then
        self.scoreDroite = self.scoreDroite + 1
        self.ball = Ball()
    elseif ball_stat == 'right' then
        self.scoreGauche = self.scoreGauche + 1
        self.ball = Ball()
    end
end
function followBall()
end
function Game:draw()
    drawMenu()
end

function drawScores()
    love.graphics.setFont(scoreFont)
    love.graphics.print(self.scoreDroite, 'center')
    love.graphics.print(self.scoreGauche, 'center')
end

function drawMenu()
    love.graphics.printf('Welcome to Pong Game', 100, 100, 300, 'center')
    if gameMode == 'solo' then
        love.graphics.setColor(1, 0, 0, 1)
    end
    love.graphics.printf('Solo', 350, 400, 200, 'center')
    love.graphics.setColor(1, 1, 1, 1)

    if gameMode == 'versus' then
        love.graphics.setColor(1, 0, 0, 1)
    end
    love.graphics.printf('Versus', 350, 200, 200, 'center')
    love.graphics.setColor(1, 1, 1, 1)
end
function love.keypressed(key)
    if key == 'down' then
        gameMode = 'versus'
    elseif key == 'up' then
        gameMode = 'solo'
    end

    if gameMode == 'solo' then
        if key == 'space' then
            -- gameModeChoice(tostring(gameMode))
            print(gameModeChoice(gameMode))
        end
    end
end

function gameModeChoice(gameMode)
    if gameMode == 'solo' then
        love.graphics.print('Hello World!', 400, 300)

        soloGame()
    else
        love.graphics.printf('TESTIIIING', 350, 200, 200, 'center')
        love.graphics.setColor(1, 1, 1, 1)
    end
end

function soloGame()
    self.padGauche:draw()
    self.padDroite:draw()

    self.ball:draw()
    love.graphics.setFont(scoreFont)

    love.graphics.print(tostring(self.scoreDroite), 350, 10 / 3)

    love.graphics.print(tostring(self.scoreGauche), 450, 10 / 3)
end
