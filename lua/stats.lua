
-- Get the median of a table.
function median( t )
  local temp={}

  -- deep copy table so that when we sort it, the original is unchanged
  -- also weed out any non numbers
  for k,v in pairs(t) do
    if type(v) == 'number' then
      table.insert( temp, v )
    end
  end

  table.sort( temp )

  -- If we have an even number of table elements or odd.
  if (#temp % 2) == 0 then
    -- return mean value of middle two elements
    return (( temp[#temp/2] + temp[(#temp/2)+1] ) / 2)
  else
    -- return middle element
    return (temp[math.ceil(#temp/2)])
  end
end
    