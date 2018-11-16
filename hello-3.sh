
#!/bin/bash 
# Program: 
# Show "Hello" from $1.... by using case .... esac 
# History: 
# 2015/07/16 VBird First release 

case ${1} in 
  "hello") 
	echo "Hello, how are you ?" 
	;; 
  "") 
	echo "You MUST input parameters, ex> {${0} someword}" 
	;; 
  *)    #其实就相当于万用字元，0~无穷多个任意字元之意！
	echo "Usage ${0} {hello}" 
	;; 
esac
