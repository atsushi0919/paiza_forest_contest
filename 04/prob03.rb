m = gets.to_i

res = if m == 3 || m == 4 || m == 5
    "spring"
  elsif m == 6 || m == 7 || m == 8
    "summer"
  elsif m == 9 || m == 10 || m == 11
    "autumn"
  else
    "winter"
  end
puts res
