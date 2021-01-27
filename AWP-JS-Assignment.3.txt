1.What is a sparse array?
An array in which most of the elements have the same value
When the array has more occurrence of zero elements
A sparse array is an array of data in which many elements have a value of zero. 
This is in contrast to a dense array, where most of the elements have non-zero values or are “full” of numbers.
=======================================================================================================
2.List of javascript keywords
Following the list of javascript keyword
goto, deleted,protected,delete,arguement,public,if,try,do,else,this,const,
class*,return,id,Ctach,break,null,switch,private,case,default,void,false,
interface,package,typeof,instanceof,implements,with,import
=============================================================
3.Different operators in javascript?
following are some operators in javascript
==:checks the content: ===:checks data type as well as contents;
+:adds and concates; typeof:returns the data type of speecific variable
=:assignment operator;%:gives remainder;
++increment --decrement /division
+= shorthand operator,adds and asigns value
-= substracts and assigns 
Operator	Description
==	equal to
===	equal value and equal type
!=	not equal
!==	not equal value or not equal type
>	greater than
<	less than
>=	greater than or equal to
<=	less than or equal to
?	ternary operator
============================================================
4.Difference between == and ===
==:checks the content: ===:checks data type as well as contents;
foloowing is the example
var a=10;
function comparing(b)
{
    if(a==b)
    {
         console.log(a)
    }
    else{
        console,log("unmatched contents")
    }
}
function nextComparing(z)
{
    if(a===z)
    {
        console.log(a);
    }
    else{
        console.log("Unmatched DataType and contents")
    }

}
comparing(10)
nextComparing("10")
VM939:5 10
VM939:18 Unmatched DataType and contents
===============================================================
5.Explain typeof operator in javscript?
var a=10;
var b=[10,20,30,40]
var c
var d=null;
var e="hello champ!"
typeof(a);//Number
typeof(b);//Object
typeof(c);//undefined
typeof(d);//object
typeof(e)//String
=============================================================
6.Explain for loop in javascript ?
var b=[10,20,30,40]
for(var i in b)
{
    console.log(i+"="+b[i])
}
VM1386:4 0=10
VM1386:4 1=20
VM1386:4 2=30
VM1386:4 3=40
=============================================================
7.Explain date methods in javascript?
var a= new Date();
console.log(a)
VM1511:2 Sun Jan 10 2021 18:24:38 GMT+0530 (India Standard Time)
b=a.getMonth()
console.log(b)
VM1595:2 //0
c=a.getDate()
console.log(c)
VM1671:2 //10
d=a.getFullYear()
console.log(d)
VM1755:2 //2021
e=a.getUTCDate()
console.log(e)
VM1844:2 //10
f=a.getYear()
console.log(f)
VM1940:2 //121
g=a.getUTCFullYear()
console.log(g)
VM2085:2 //2021
=============================================================
write a suitable example to illustrate jquery
<script src="jqueri.js"></script>
        <script>
            $(document).ready(function(){
                $("pre").css("color","blue")
                $("pre").css("border","2px solid red")
                $("pre").css("background","white")
            })
            $(document).ready(function(){
                $("pre").click(function(){
                $("pre").css("background","navy")
                let a=$("pre").html()
                console.log(a)
                })
            })
            $(document).ready(function(){
                $("#b1").mouseenter(function(){
                $("#b1").css("color","black")
                })
            })
            $(document).ready(function(){
                $("#b1").mouseleave(function(){
                $("#b1").css("color","")
                })
            })
            $(document).ready(function(){
                $("body").keypress(function(){
                $("body").css("background-color","white")
                })
            })
            $(document).ready(function(){
                $("body").keyup(function(){
                $("body").css("background-color","red")
                })
            })
            // $(document).ready(function(){
            //     $(window).scroll(function(){
            //     alert("you scrolled")
            //     })
            // })
        </script>
=============================================================
Get fname using javascript
<!DOCTYPE html>
<html>
<body>

First Name: <input name="fname" type="text" value="Michael"><br>
First Name: <input name="fname" type="text" value="Doug">

<p>Click the button to get the tag name of the first element in the document that has a name attribute with the value "fname".</p>

<button onclick="myFunction()">Try it</button>

<p id="demo"></p>

<script>
function myFunction() {
  var x = document.getElementsByName("fname")[0].tagName;
  document.getElementById("demo").innerHTML = x;
}
</script>

</body>
</html>