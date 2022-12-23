

def f(p1, p2, x, y)
    if x <= y
        p1[x]
    else
        p2[y]
    end
end

# def g(x, y, &p1)
#     method(:f).curry[p1]
# end

q = method(:f).curry
q = q[Proc.new{ |z| "Called p1, #{z}"}, Proc.new{ |z| "Called p2, #{z}"}]
p q
w = q
p w[5, 19]

p w[19, 5]


