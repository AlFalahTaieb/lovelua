Game = Object:extend()

function Game:new()
    self.padGauche = Pad()
    self.padDroite = Pad()
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
    love.graphics.print(self.scoreDroite .. '-' .. self.scoreGauche, 350, 10, 0, 2, 2)
end

-- AI --



function secondaryPlayerSetup()
    --[[
        If this is the first time the right paddle is created, set it up at the initial
        starting location, otherwise set it to the old paddle's location.
    ]]
    if padGauche == nil then
        padGauche = Pad:Create(self.padDroite.x, self.padDroite.y, 'up', 'down', false)
    else
        padGauche = Pad:Create(self.padDroite.xSpeed, self.padDroite.ySpeed, 'up', 'down', false)
    end
end
