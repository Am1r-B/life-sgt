function love.load()
  love.graphics.setBackgroundColor(1, 1, 1)
  
  cellSize = 5
end

function love.update()
  selectedX = math.floor(love.mouse.getX() / cellSize) + 1
  selectedY = math.floor(love.mouse.getY() / cellSize) + 1
end

function love.draw()
  for y = 1, 50 do
    for x = 1, 70 do
      -- Removed: local cellSize = 5
      local cellDrawSize = cellSize - 1
      
      love.graphics.setColor(.86, .86, .86)
      love.graphics.rectangle(
        'fill',
        (x - 1) * cellSize,
        (y - 1) * cellSize,
        cellDrawSize,
        cellDrawSize
      )
    end
  end
  
  -- Temporary
  love.graphics.setColor(0, 0, 0)
  love.graphics.print('selected x: '..selectedX..', selected y: '..selectedY)
end