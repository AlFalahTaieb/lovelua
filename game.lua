Game = Object:extend()
smallFont = love.graphics.newFont('fonts/pong.ttf', 8)
largeFont = love.graphics.newFont('fonts/pong.ttf', 16)
scoreFont = love.graphics.newFont('fonts/pong.ttf', 32)

function Game:new()
    self.padGauche = Pad("left")
    self.padDroite = Pad("right")
    self.padDroite.x = 740
    self.padDroite.keyUp = 'z'
    self.padDroite.keyDown = 's'
    self.ball = Ball()
    self.scoreGauche = 0
    self.scoreDroite = 0
end

function Game:update(dt)
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

function Game:draw()
    self.padGauche:draw()
    self.padDroite:draw()

    self.ball:draw()
    love.graphics.setFont(scoreFont)

    love.graphics.print(tostring(self.scoreDroite), 350, 10 / 3)

    love.graphics.print(tostring(self.scoreGauche), 450  , 10 / 3)
end

function drawScores()
    love.graphics.setFont(scoreFont)
    love.graphics.print(self.scoreDroite, 'center')
    love.graphics.print(self.scoreGauche, 'center')
end


