class Score
    def get_total(scores)
        arr = scores.split("-")
        total = 0
        arr.each do |s|
          idx = arr.index(s)
          if s == "X"
        # extraThrow = 0
        # if s[idx+1].include?("/")
        #   extraThrow += 10
        # elsif s[idx+1] == "X"

        # else
        #   extraThrow += (s[idx+1][0] + s[idx+1][1])
        # end 
        # firstThrow = s[idx+1]
        # total += (10 + )
          elsif s.include?("/")
              total += (10 + arr[idx+1][0].to_i)
          else                
              idx == 10 ? nil : total += 9
          end
            
        end
      return total
    end
end