
def f(x, y, &b)
    method(
        def jeff(s, t, p1, junk, &p2)
            if s <= t
                p1.call s, t
            else
                p2.call s, t
                # yield
            end
        end
            ).curry[x, y, b]
end

p f(13,5){ |a, b| "#{b} >= #{a}" }[0]{ |a, b| "#{a} > #{b}" }
p f(5,5){ "second is same or larger!" }[nil]{ "first is larger" }
p f(5,13){ "second is same or larger!" }[nil]{ "first is larger" }
p f('a','z'){ "second is same or larger!" }[nil]{ "first is larger" }
p f('Z','a'){ "second is same or larger!" }[nil]{ "first is larger" }
p f('a','Z'){ "second is same or larger!" }[nil]{ "first is larger" }