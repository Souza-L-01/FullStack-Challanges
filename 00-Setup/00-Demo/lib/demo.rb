def circle_area(radius)
  if radius.positive?
    area = 3.14 * radius * radius
    return area
  else
    return 0
  end
end
