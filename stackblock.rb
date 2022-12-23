
def f(x, y, &b)
    b.call(x)
    method(def jeff(s, t); yield s; t; end).curry[y]
end

p f(5, 13) { |r| p "r=#{r} block 1"}[6] { |x| p "x=#{x} oh my!"}
p '*' * 40
p f(15, 3) { |r| p "r=#{r} B 1"}[7] { |x| p "x=#{x} oh dear!"}

