# def opportunity
#     if yield_1
#       @opportunities += 1
#     end
#     if yield_2
#       @performances +=1
#     end
#   end

#-----------------------------

@opportunities = 0
@performances = 0

  def opportunity &b1
    method(
        def helper b1, dummy, &b2
            if b1.call 
                @opportunities += 1
            end
            if b2.call 
                @performances += 1
            end
        end).curry[b1]
  end

  opportunity {true}[nil]{true} 
  p [@opportunities, @performances]     #[1, 1]
  opportunity {false}[nil]{true}
  p [@opportunities, @performances]     #[1, 2]
  opportunity {false}[nil]{true}
  p [@opportunities, @performances]     #[1, 3]
  opportunity {false}[nil]{false}
  p [@opportunities, @performances]     #[1, 3]
  opportunity {true}[nil]{false}
  p [@opportunities, @performances]     #[2, 3]
  opportunity {true}[nil]{true}
  p [@opportunities, @performances]     #[3, 4]
  
  