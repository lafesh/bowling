class Score
  def get_total(scores)
      arr = scores.split("-")
      total = 0
      arr.each do |s|
        idx = arr.index(s)
        if s == "X"
          extraThrow = 0
          if arr[idx+1].include?("/")
            extraThrow += 10
          elsif arr[idx+1] == "X"
            arr[idx+2] == "X" ? extraThrow += 20 : extraThrow += 10 + arr[idx+2][0]
          else
            extraThrow += (s[idx+1][0] + s[idx+1][1])
          end            
          total += (10 + extraThrow)
        elsif s.include?("/")
            total += (10 + arr[idx+1][0].to_i)
        else                
            idx == 10 ? nil : total += 9
        end
          
      end
    return total
  end
end