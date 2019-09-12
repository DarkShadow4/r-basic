Harry = -10:27
Harry[7]

n = 0:200
sucesion = c(100*2^n-7*3^n)
max(sucesion)

suc = 0:40
vec = 3*5^suc-1
vec
vec[vec>3.5]

number = function(x) {
  return(c(round(Re(x), 2), round(Im(x), 2), round(Mod(x), 2), round(Arg(x), 2), round(Conj(x)), 2))
}
number(123441.2345+3214.21345i)

vec2 = c(0,9,98,2,6,7,5,19,88,20,16,0)
vec2[vec2==9 | vec2>15 &vec2<=20]

which(vec2 %%2 == 0)
which(vec2 %%2 != 0 & vec2 > 20)
which.max(vec2)
which(vec2==min(vec2))
