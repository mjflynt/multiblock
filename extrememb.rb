
# def f(x, y, &b)
#     method(
#         def jeff(s, t, p1, junk, &p2)
#             if s <= t
#                 p1.call s, t
#             else
#                 p2.call s, t
#                 # yield
#             end
#         end
#             ).curry[x, y, b]
# end

def g(p1, &b1)
    method(
        def h1(p2, &b2)

        end
    )

end
