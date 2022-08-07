function love.load()
  love.graphics.setBackgroundColor(1, 1, 1)
  
  cellSize = 5
  
  gridXCount = 70
  gridYCount = 50
  
  grid = {}
  for y = 1, gridYCount do
    grid[y] = {}
    for x = 1, gridXCount do
      grid[y][x] = false
    end
  end
end

function love.update()
  selectedX = math.min(math.floor(love.mouse.getX() / cellSize) + 1, gridXCount)
  selectedY = math.min(math.floor(love.mouse.getY() / cellSize) + 1, gridYCount)
  
  if love.mouse.isDown(1) then
    grid[selectedY][selectedX] = true
  end
end

-- Temporary
function love.mousepressed(mouseX, mouseY, button)
  if button == 2 then
    local neighborCount = 0
    
    print('Finding neighbors of grid['..selectedY..']['..selectedX..']')
    
    for dy = -1, 1 do
      for dx = -1, 1 do
        
        print(' Checking grid['..selectedY + dy..']['..selectedX + dx..']')
        
        if not (dy == 0 and dx == 0)
        and grid[selectedY + dy]
        and grid[selectedY + dy][selectedX + dx] then
          
          print('  Neighbor found')
          neighborCount = neighborCount + 1
        end
      end
    end
    
    print('Total neighbors: '..neighborCount)
    print()
  end
end

function love.draw()
  for y = 1, gridYCount do
    for x = 1, gridXCount do
      local cellDrawSize = cellSize - 1
      
      if x == selectedX and y == selectedY then
        love.graphics.setColor(0, 1, 1)
      elseif grid[y][x] then
        love.graphics.setColor(1, 0, 1)
      else
        love.graphics.setColor(.86, .86, .86)
      end
      
      love.graphics.rectangle(
        'fill',
        (x - 1) * cellSize,
        (y - 1) * cellSize,
        cellDrawSize,
        cellDrawSize
      )
    end
  end
end