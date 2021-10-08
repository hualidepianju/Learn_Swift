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
var intArray1 = [Int]()                               //创建空白Int类型数组
intArray1.append(30)                                  //向数组intArray1末尾中添加数字30
intArray1.append(contents0f: [1234,23456,])           //向数组intArray1末尾中添加另一个数组[1234,23456,]
intArray1 += [40]                                     //向数组intArray1末尾中添加数字40 
print(intArray1)                                      //打印数组intArray1
intArray1.insert(88, at: X)                           //向数组strArray1中第0位添加元素 “This String”
intArray1.insert(contents0f: [123,2131312,],at: X)    //向数组strArray1中第0位添加另一数组["123","2131312",]


var strArray1 = [String]()                                //创建空白Str类型数组
strArray1.append("30")                                    //向数组strArray1末尾中添加字符30
strArray1.append(contents0f: ["1234","23456",])           //向数组strArray1末尾中添加另一个数组[1234,23456,]
strArray1 += ["1"]                                        //向数组strArray1末尾中添加字符40 
print(strArray1)                                          //打印数组strArray1
strArray1.insert("This String", at: X)                    //向数组strArray1中第0位添加元素 “This String”
strArray1.insert(contents0f: ["123","2131312",],at: X)    //向数组strArray1中第0位添加另一数组["123","2131312",]

/*注意⚠️函数insert(contents0f:[],at:X)及insert("",at:X)中X的值不得大于原有数组最高位*/

//04)从原有数组中删除某一元素
var intArray = [1,2,3,4,5,6,7,]

intArray.removeFirst()            //删除intArray数组中第一个元素
print(intArray)

intArray.removeEnd()              //删除intArray数组中最后一个元素
print(intArray)                   

intArray.remove(at: X)        //删除intArray数组中第 X（0-n） 位的元素

/*注意⚠️函数remove(at:X)中X的值不得大于原有数组最高位*/

//特殊删除元素方法
var animals = ["cats", "dogs", "chimps", "moose", "chimps"]

animals = animals.filter(){$0 != "chimps"}
print(animals)                              // ["cats", "dogs", "moose"]

# 总结：创建空数组或字典，请使用初始化器语法

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

var emptyArray: [String] = []
var emptyDictionary: [String: Float] = [:]


#如果可以推断类型信息，您可以将空数组写成[]空字典为[:]
#例如，当您为变量设置新值或将参数传递给函数时
emptyArray = []
emptyDictionary = [:]



#    02 day

# Swift Tour - 02)Control Flow

#使用 if 和 switch 生成条件，并使用 for-in、while 和 repeat-while 生成循环
#条件或循环变量周围的括号是可选的
#语句的周围需要大括号。
let individualScores = [75, 43, 103, 87, 12]        //定义常量individualScoroes为整型数组
var teamScore = 0                                   //定义变量teamScore初始值为0
for score in individualScores {                     //创建for循环，且创建变量score，其值在individualScores数组中
    if score > 50 {                                 //创建if判断条件，当变量score满足其值大于50
        teamScore += 3                              //使变量teamScore加3，且再赋值给变量teamScore
    } else {                                        //创建else否则条件
        teamScore += 1                              //使变量teamScore加1，且再赋值给变量teamScore
    }
}
print(teamScore)                                    //打印变量teamScore的值

#注意⚠️：在if语句中，条件必须是布尔表达式
#（布尔表达式（Boolean expression）是一段代码声明，它最终只有true（真）和false（假）两个取值。最简单的布尔表达式是等式（equality），这种布尔表达式用来测试一个值是否与另一个值相同。）
#所以类似if score{}是错误的，因为其缺少布尔表达式，即无法判断true或false的值
#使用？在值类型后将值标记为可选值（包含nil）
#当你不确定判断对象的值是否为nill时，可以使用if let,且用let做声明时，不可以修改其值
var optionalName: String? = "John Appleseed"                 //定义变量optionalName为显性字符串型，使用？在值类型后将值标记为可选值（包含nil或包含值）
var greeting = "Hello!"                                      //定义变量greeting为隐性字符串型，使用？在值类型后将值标记为可选值（包含nil或包含值）
if let name = optionalName {                                 //创建if语句并和let一起使用，使其可处理可能缺失的值，且常量name的值不可更改
    greeting = "Hello, \(name)"
}


#使用if var，且用var做声明时，可以修改其值
let name: String? = "老王"                                    //定义常量name为显性字符串型，使用？在值类型后将值标记为可选值（包含nil或包含值）
let age: Int? = 10                                           //定义常量age为显性整型，使用？在值类型后将值标记为可选值（包含nil或包含值）
if var nameNew = name{                                       //创建if语句并和var一起使用，也可使其处理可能缺失的值，且变量nameNew的值可更改
    nameNew = "老李"
    print(nameNew )     
}


#处理可选值的另一种方法是使用 ?? 。如果缺少可选值，则使用默认值代替。
let nickname: String? = nil                                   //定义常量nickname为显性字符串型，使用？在值类型后将值标记为可选值（包含nil或包含值）
let fullName: String = "John Appleseed"                       //定义常亮fullName为显性字符串型，其值为：John Appleseed
let informalGreeting = "Hi \(nickname ?? fullName)"           //定义常量informalGreeting为隐性字符串型，其值为：Hi \(nickname ?? fullName)
                                                              //因为常量nickname的值为：nil，所以在常量informalGreeting中显示Hi JohnAppleseed


