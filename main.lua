-- переменные --
local slimeX = 300
local slimeY = 200
local moveSpeed = 200
local state = "idle"
local rotation = "right"

-- импорт --
local slimeIdle = love.graphics.newImage("animations/slime/idle/frame1.png")
local slimeWalk = love.graphics.newImage("animations/slime/walk/frame1.png")

-- логика --
function love.update(dt)
    if love.keyboard.isDown("a") then
        slimeX = slimeX - moveSpeed * dt
        state = "walking"
    elseif love.keyboard.isDown("d") then
        slimeX = slimeX + moveSpeed * dt
        state = "walking"
    else
        state = "idle"
    end
end

-- отрисовка --
function love.draw()
    if state == "walking" then
        if love.keyboard.isDown("a") then
            love.graphics.draw(slimeWalk, slimeX, slimeY, 0, -1, 1)
            rotation = "left"
        else
            love.graphics.draw(slimeWalk, slimeX, slimeY)
        end
    else
        love.graphics.draw(slimeIdle, slimeX, slimeY)
    end
    if rotation == "left" them
    end
end

-- помощь --
-- normal
--love.graphics.draw(image, x, y, rotation, 1, 1) 
--
-- mirror
--love.graphics.draw(image, x, y, rotation, -1, 1) 
--
-- flipped
--love.graphics.draw(image, x, y, rotation, 1, -1) 
