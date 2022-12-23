
def f(&b)
    method(
        def jeff(p1, s, t, &p2)
            if s <= t
                p1.call s, t
            else
                p2.call s, t
                # yield
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



# p f(5,5){ "second is same or larger!" }[nil]{ "first is larger" }
# p f(5,13){ "second is same or larger!" }[nil]{ "first is larger" }
# p f('a','z'){ "second is same or larger!" }[nil]{ "first is larger" }
# p f('Z','a'){ "second is same or larger!" }[nil]{ "first is larger" }
# p f('a','Z'){ "second is same or larger!" }[nil]{ "first is larger" }