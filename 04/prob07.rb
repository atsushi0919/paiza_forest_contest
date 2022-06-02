n = gets.to_i

res = 0
9.downto(1) do |i|
  if n >= i * 11
    res = i * 11
    break
  end
end

puts res
