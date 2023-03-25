
class Klass
    def initialize(p)
        @p = p
    end

    def whatIsp
        p "p = #{@p}" 
    end

    def m0(x)
        p "inside m0 and passed x = #{x}"
        p @p
    end

    def m1(x)
        p "inside m1 and passed x = #{x}"
        p @p
    end

    def self.m2
        p "in m2"
    end

    class << self
        def m3 
            p "in m3"
        end
    end
end

class M 
end


x = Klass.new(5)
x.whatIsp

'-='*20

p Klass.methods(false)
p '-'*40
p x.public_methods(false)
                                                                                               
# define_method(:barney, instance_method(:fred))

x = Klass.instance_method(:m1)
p x.class
M.send(:define_method,:copied_m1, &Klass.new(10).method(:m1))
M.define_method(:copied_m0, &Klass.new(-5.5).method(:m0))

p "="*40
f = M.new
f.copied_m1(69)
M.new.copied_m0(42)
f.copied_m1(81)


k = M.new
puts k.methods.sort - k.class.superclass.methods

p '~'*40

p "singletons = #{Klass.singleton_methods}"

# class A
#     def bomb ; "bomb" ; end
#   end
  
#   class B ; end
  
#   bomb = A.new.method(:bomb)
  
#   B.send(:define_method, :bomb_in_b, &bomb) #converting to proc
  
#   b = B.new
#   puts b.bomb_in_b