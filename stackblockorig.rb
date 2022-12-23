
def f(x, &b)
    b.call(x)
    method(def jeff(x); yield x; x; end)
end

# p f(5)
# p jeff(6){ p "Hello!"}

p f(5) { |r| p "r=#{r} block 1"}[6] { |x| p "x=#{x} oh my!"}

