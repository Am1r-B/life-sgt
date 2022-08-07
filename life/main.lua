function love.load()
  love.graphics.setBackgroundColor(1, 1, 1)
  
  cellSize = 5
  
  gridXCount = 70
  gridYCount = 50
end

function love.update()
  selectedX = math.min(math.floor(love.mouse.getX() / cellSize) + 1, gridXCount)
  selectedY = math.min(math.floor(love.mouse.getY() / cellSize) + 1, gridYCount)
end

function love.draw()
  for y = 1, gridYCount do
    for x = 1, gridXCount do
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