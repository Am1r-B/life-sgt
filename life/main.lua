function love.draw()
  for x = 1, 70 do
    local cellSize = 5
    local cellDrawSize = cellSize - 1
    
    love.graphics.rectangle(
      'fill',
      (x - 1) * cellSize,
      0,
      cellDrawSize,
      cellDrawSize
    )
  end
end