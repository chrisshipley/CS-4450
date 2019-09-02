fun cube x = x * x * x;


fun cuber x : real = x * x * x; 


fun fourth x = hd(tl(tl(tl(x))));


fun min3(x, y, z) = 
	if x <= y andalso x <= z then x
	else if y <= x andalso y <= z then y
	else z;
	
	
fun red3 (x : 'a * 'b * 'c) : 'a * 'c = (#1(x), #3(x));


fun thirds x = hd(tl(tl(explode(x))));


fun cycle1 x = tl x @ hd x :: [];


fun sort3(x:real, y:real, z:real) = 
	if x <= y andalso y <= z then [x, y, z]
	else if x <= z andalso z <= y then [x, z, y]
	else if y <= x andalso x <= z then [y, x, z]
	else if y <= z andalso z <= x then [y, z, x]
	else if z <= x andalso x <= y then [z, x, y]
	else [z, y, x];
	

fun del3 x = hd(x):: hd(tl(x)) :: tl(tl(tl(x)));


fun sqsum x = 
	if x > 0 then x * x + sqsum(x - 1)
	else 0;
	
	
fun cycle(x, y) = 
	if y  > 1 then cycle1(cycle(x, y - 1))
	else cycle1(x);
	
	
fun pow(x:real, y:int) : real =
	if y > 0 then x * pow(x, y - 1)
	else 1.0;
	
	
	
fun maxhelper (x, y) =
	if null x then y
	else if hd x > y then maxhelper(tl x, hd x)
	else maxhelper(tl x, y);
	
fun max x = maxhelper(tl x, hd x);


fun testPrime(i, x) = 
	if (i * i) > x then true
	else if x mod i = 0 then false
	else testPrime(i + 1, x);
	
fun isPrime x = 
	if x = 1 then false
	else testPrime(2, x);


fun select (x, f) =
	if null x then nil
	else if f(hd(x)) = true then hd(x) :: select(tl(x), f) 
	else select(tl(x), f);	
