weights= input("Enter weights"
a1=[]
b1=[]
c1=[]
cache_a1=[]
cache_b1=[]
cache_c1=[]
a=40
b=77
c=97
j=1
while(True):
	for i in weights:
		m1=abs(a-i)
		m2=abs(b-i)
		m3=abs(c-i)
		min_weight=min(m1,m2,m3)
		if min_weight == m1:
			a1.append(i)
		elif min_weight == m2:
			b1.append(i)
		elif min_weight == m3:
			c1.append(i)	
	print("Iteration no",j)	
	print(a1)	
	print(b1)	
	print(c1)
	a = float(sum(a1)/float(len(a1)))
	b = float(sum(b1)/float(len(b1)))
	c = float(sum(c1)/float(len(c1)))
	
	cache_a1 = a1
	cache_b1 = b1	
	cache_c1 = c1	
	
	if cache_a1 == a1 and cache_b1 == b1 and cache_c1 == c1:
		print("Algorithm detected same weights for next iteration closing code.....")
		break	
	
	cache_a1 = a1
	cache_b1 = b1	
	cache_c1 = c1	
	
	a1=[]
	b1=[]
	c1=[]
	j = j+1
