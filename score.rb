class Score
  def get_total(scores)
      arr = scores.split("-")
      idx = -1
      total = 0
      arr.each do |s|
        idx += 1
        if s == "X"
          if idx == 10 && arr[idx-1].include?("/")
            total += 0         
          elsif arr[idx+1].include?("/")
            total += 20
          elsif arr[idx+1] == "X"
            arr[idx+2].include?("X") ? total += 30 : total += 20 + arr[idx+2][0].to_i
          elsif arr[idx+1] == "XX"
            total += 30
          else
            total += (10 + arr[idx+1][0].to_i + arr[idx+1][1].to_i)
          end                  
        elsif s.include?("/")
            arr[idx+1] == "X" ? total += 20 : total += (10 + arr[idx+1][0].to_i)
        else                
            idx == 10 ? nil : total += s[0].to_i + s[1].to_i
        end
          
      end
    return total
  end
end