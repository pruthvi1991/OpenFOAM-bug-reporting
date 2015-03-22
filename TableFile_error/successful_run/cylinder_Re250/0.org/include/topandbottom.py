import math
t = 0;
period = 5.0;
u = 0.025;
f = 1/period;
print ("(")
while t<period:
	v = 0.025*math.sin(2*(math.pi)*t*f);
	if v > 0:
		v = 0;
	print ('        ' + '(' + str(t) + ' '  +'(' + str(u) + ' ' + str(v) + ' ' + str(0) + ')'+')')
	t = t + 0.1;
	#print ('        ' + str(t) + ' '  +'(' + str(u) + ' ' + str(v) + ' ' + str(0) + ')')
print (");")

