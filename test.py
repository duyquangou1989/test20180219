#!/usr/bin/python
# coding=utf-8
def testfunc(kind,*arg,**key):
	print ('-- Do you have any', kind,' ?')
	print('-- Im sorry, we re all out of', kind)
	for a in arg:
		print (a)
	print('-' * 40)
	for kw in key:
		print(kw,':',key[kw])

testfunc("Limburger", "It's very runny, sir.",
           "It's really very, VERY runny, sir.",
           'Fuckyou',
           shopkeeper="Michael Palin",
           client="John Cleese",
           sketch="Cheese Shop Sketch"
	)
#lambda
testlam = lambda a: a + 1

print testlam(1)
