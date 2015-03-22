import math
t = 0;
u = 0.2;
f = 0.1830281846;
period = 1/f;
omega = 2*(math.pi)*f;
H0 = 0.08;

print ("(")
while t<period:
	v = H0*omega*(math.cos(omega*t));
	print ('        ' + '(' + str(t) + ' '  +'(' + str(u) + ' ' + str(v) + ' ' + str(0) + ')'+')')
#	print ('        ' +  str(t) + ' '  +'(' + str(u) + ' ' + str(v) + ' ' + str(0) + ')')
	t = t + 0.001;
	#print ('        ' + str(t) + ' '  +'(' + str(u) + ' ' + str(v) + ' ' + str(0) + ')')
print (");")
