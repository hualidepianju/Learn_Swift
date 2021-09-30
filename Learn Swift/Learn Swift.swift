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
//案例一
let lable = "hello,word"  //常量label以隐性string类型被声明且被赋值为helloword，这是将常量lable用print(label)打印出来可得：hello，word
let wight = 94            //常量wight以隐性int类型被声明且被赋值为94，这时将常量wight用print(wight)打印出来可得：94
let wightlable = String(wight) + lable //常量wightlable以显性String的wight和隐性的String的lable被声明，用print(wightlable)为94hello，word
//案例二
let a: float = 3                  //定义常量a为float类型且赋值为3，即结果为0.3
let b = 6                         //定义常量b为隐性int类型且赋值为6，即结果为6
let c = Double(a) + Double(b)     //定义常量c为常量a与常量b的和，但由于Swift不支持含有隐性类型声明的值运算
                                  //故要将常量a与常量b进行显性声明，且“+”运算仅支持相同声明类型的运算，故使常量a与常量b使用相同的Double()显性声明
                                  //其他的声明类型同理
//let d = Float(b) + Float(a)  *1*  
//使用Xcode IDE 为 *1* 在Swift Playgrounds中验证结果为Type of expression is ambiguous without more context（表达类型不明确，没有更多上下文）
//解决方法为：let c = Double(a) + Double(b)或 let d = b + Int(a) 根据需要进行选择
//若有更好且直接有效的方法我会及时更新

//案例三
let number = 3.6234               //定义常量number为隐性FLoat类型，值为3.6234
let value = Int(number)           //定义常量value为显性Int类型，值为3

//错误案例一
let l = "hello,word"  //常量l以隐性string类型被声明且被赋值为helloword，这是将常量l用print(l)打印出来可得：hello，word
let w = 94            //常量w以隐性int类型被声明且被赋值为94，这时将常量w用print(w)打印出来可得：94
let wl = w + Int(l)   //常量wl以显性Int的l和隐性的Int的w被声明
                      //程序报错 Value of optional type 'Int?' must be unwrapped to a value of type 'Int'（可选类型“Int?”的值必须解包为“Int”类型的值）
