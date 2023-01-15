
def f(&b)
    method(
        def jeff(p1, s, t, &p2)
            if s <= t
                p1.call s, t
            else
                # p2.call s, t
                yield s, t
            end
        end
            ).curry[b]
end

p f{ |a, b| "#{b} >= #{a}" }[13, 5]{ |a, b| "#{a} > #{b}" }
p f{ |a, b| "#{b} >= #{a}" }[5, 5]{ |a, b| "#{a} > #{b}" }
p f{ |a, b| "#{b} >= #{a}" }[4, 5]{ |a, b| "#{a} > #{b}" }
p f{ |a, b| "#{b} >= #{a}" }[13, 14]{ |a, b| "#{a} > #{b}" }
p f{ |a, b| "#{b} >= #{a}" }[4, -1]{ |a, b| "#{a} > #{b}" }
p f{ |a, b| "#{b} >= #{a}" }[-15, -13]{ |a, b| "#{a} > #{b}" }

p `ruby -v`
