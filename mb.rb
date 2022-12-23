

def f(x, y)
    x >> y 
end

sq = Proc.new { |v| v * 2 }
cu = Proc.new { |v| v ** 3 }

x =  f( sq, cu )
p x[2]

def q(r, s, t, u)
    Math.sqrt(r*r + s*s + t*t + u*u)
end

p q(3,5,7,11)
p "-"*80


x = [3,5,7,11]
w = method(:q).curry

x.each { |p| w = w[p] }
p w

p "-"*80

p q(*x)

# g = method(:f).curry
# h = g.call(sq)
# p h[cu]


