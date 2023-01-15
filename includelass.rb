# see if you can include a Class (rather than a module) in another class.

module Junk
    class X
        p "Hello world!" #stupid
    end
end

class Jeff
    include Junk
end

x = Jeff.new