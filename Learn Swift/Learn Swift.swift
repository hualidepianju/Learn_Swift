#学习The Swift Programming Language

#    01 day
# Swift Tour - 01)Simple Values

//学习Swift第一步打印Hello，word
print("Hello,word") 

//使用var声明变量，let声明常量（无需在一开始赋值且只能赋值一次）
var myVariable = 42 //myVariable为变量名，42是为myVariable赋的值，无需标注具体的数据类型，编辑器可以自动识别数据类型
myVariable = 50     //变量myVariable被重新赋值为50
let myConstant = 42 //myConstant为常量名，42是为myConstant服的值。

//在初始化阶段如果你没有赋值给常量初始值或初始值特征不全时，需要在常量名后面用冒号（:）分割，且需要其后面指定声明类型
let implicitInteger = 70  //声明类型为int类型
let implicitDouble = 70.0 //声明类型为double类型
let exlicitFloat : Float = 4 //通过手动添加初始值特征 Float，使 数据4 以 float类型 被 let 声明给 exlicitFloat

//当你想将已被某种类型声明后的数据，需要以新的类型再次声明时要将所需类型以显性方式创建
let lable = "hello,word"  //常量label以隐性string类型被声明且被赋值为helloword，这是将常量lable用print(label)打印出来可得：hello，word
let wight = 94            //常量wight以隐性int类型被声明且被赋值为94，这时将常量wight用print(wight)打印出来可得：94
let wightlable = String(wight) + lable //常量wightlable以显性String的wight和隐性的String的lable被声明，用print(wightlable)为94hello，word
