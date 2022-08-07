function love.draw()
  for y = 1, 50 do
    for x = 1, 70 do
      local cellSize = 5
      local cellDrawSize = cellSize - 1
      
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