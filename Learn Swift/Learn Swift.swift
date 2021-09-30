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

//如何将函数的值包含在字符串里,可以使用 \() 
let xInt = 56                              //定义常量xInt以隐性Int类型声明且赋值为56
let str = "hello,\(xInt)word"              //定义常量str以隐性String类型声明且赋值为“hello，\(xInt)word”
                                           //其中 \(xInt) 是将常量xInt 隐性的从Int类型转化为String类型
print(str)                                 //所以通过print()打印输出，可得到 hello，56word
let str1 = "hello\(str),word"  
let str2 = "hello\(str + str1),word"       //另外，\()的()内允许诸如此类（a+b）的内容

//若想像我这样，请使用 """ （三个英文输入法状态下的双引号连续三个）
let yStr = """ 
你好，你以为
这时多行
输入
其实，
这是在同一行
"""

//接下来就是数组索引了
//使用 [] 来创建数组或索引
//案例一 ： 数组
//01）创建数组
var intArray = [1,2,3,4,5,6,7,]
var strArray = ["a","s","d","a","s","s","d",]
/*你可以在[]写入你想存入的任何字符、字符串或数字*/
//格式有四种任意选择
var someArray1 = []                                                             //通用且具用隐性类型的数组（数组内不能同时存有String和Int类型）
var someArray2 = [SomeType]()                                                   //特定类型的数组
var someArray3 : [SomeTyoe] = []                                                //同上
var someArray4 = [SomeType](repeating: InitialValue, count: NumbeOfElements)    //创建特定内容（repeating）、大小（count）的数组


//02）访问数组
var someVar = someArray[index]                                                  //index 索引从 0 开始，即索引 0 对应第一个元素，索引 1 对应第二个元素，以此类推。
/*如何访问数组*/
var someVar = intArray[6]                             //该语句表明在intArray[]数组中将第七个数字取出（因为程序计算数组个数方式为0-n
                                                      //但实际计算数组方式为1-m，故实际数组个数与程序数组个数差一位，即m-1，就可得出
print(someVar)                                        //结果为7
//03）向数组添加内容
var intArray1 = [Int]()          //创建空白Int类型数组
intArray1.append(30)             //向数组intArray1中添加数字30
intArray1 += [40]                //向数组intArray1中添加数字40 
print(intArray1)                 //打印数组intArray1

var strArray1 = [String]()          //创建空白Str类型数组
strArray1.append("30")              //向数组strArray1中添加字符30
strArray1 += ["1"]                  //向数组strArray1中添加字符40 
print(strArray1)                    //打印数组strArray1

