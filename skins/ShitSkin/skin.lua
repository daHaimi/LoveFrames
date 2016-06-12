local path = string.sub(..., 1, string.len(...) - string.len(".skins.ShitSkin.skin"));
local loveframes = require(path .. ".libraries.common");

local skin = {}

skin.name = "ShitSkin";
skin.author = "Edited Version of Nikolai Resokav";
skin.version = "1.0";

local color = {255, 255, 255, 255};

function skin.DrawSlider(object)
    local x = object:GetX();
    local y = object:GetY();
    local width = object:GetWidth();
    local height = object:GetHeight();
    
    love.graphics.setColor({0, 0, 0, 255});
    love.graphics.rectangle("fill", x, y + height/2 - 5, width, 10);
    love.graphics.setColor({0, 0, 0, 255});
    love.graphics.rectangle("fill", x + 5, y + height/2, width - 10, 1);
end


function skin.DrawSliderButton(object)
    local skin = object:GetSkin();
    local x = object:GetX();
    local y = object:GetY();
    local width = object:GetWidth();
    local height = object:GetHeight();
    local down = object.down;

    if down then
        local image = skin.images["hamsterNom.png"]
        local imageheight = image:getHeight();
        local scaley = height/imageheight;
        love.graphics.setColor(255, 255, 255, 255);
        love.graphics.draw(image, x-32, y-20, 0);
    else
        local image = skin.images["hamster.png"]
        local imageheight = image:getHeight();
        local scaley = height/imageheight;
        love.graphics.setColor(255, 255, 255, 255);
        love.graphics.draw(image, x-32, y-20, 0);
    end
end


function skin.DrawImageButton(object)
    local skin = object:GetSkin();
    local x = object:GetX();
    local y = object:GetY();
    local width = object:GetWidth();
    local height = object:GetHeight();
    local text = object:GetText();
    local image = object:GetImage();
    local imagecolor = object.imagecolor or {255, 255, 255, 255};
    local down = object.down;
    local font = love.graphics.newFont("font/8bitOperatorPlus-Regular.ttf", 25);
    local twidth = font:getWidth(object.text);
    local theight = font:getHeight(object.text);
            
    if image then
        love.graphics.setColor(imagecolor);
        love.graphics.draw(image, x + 1, y + 1);
    end
    love.graphics.setFont(font);
    love.graphics.setColor(0, 0, 0, 255);
    love.graphics.print(text, x + width/2 - twidth/2 + 1, y + height - theight - 5 + 1);
    love.graphics.setColor(color);
    love.graphics.print(text, x + width/2 - twidth/2 + 1, y + height - theight - 6 + 1);
    love.graphics.print(text, x + width/2 - twidth/2, y + height - theight - 6);
end

-- register the skin
loveframes.skins.Register(skin);