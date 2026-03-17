# 与えられた文字列からwのみを抜き出す。

str = "wabwabwrabxabdjfjwxabab"

str = str.gsub("w", "")

# charsメソッドで文字列を一つずつ分割

chars = str.chars

(0..chars.length).each do |i|
  if chars[i] == "x"
    if chars[i+3] && chars[i+3] != "x"
      chars[i+3] = "e"
    end
  end
end


# 配列をだったcharsを結合
str = chars.join

puts str

