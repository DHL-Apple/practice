import UIKit

var str = "Hello, playground"
//構造体を型として利用する。
//実は構造体は型である。
//例
struct Human{
    var name:String
    var age:Int
}

var h = Human(name: "Tom",age: 23)
print(h)
print(type(of: h))

//インスタンスプロパティ：インスタンスに紐づくプロパティ
//例　配列のcountプロパティ
var arr = [10,20,30,40]
print(arr.count)

var ave = 0
for i in 0 ..< arr.count{
ave = ave + arr[i]
}
ave = ave / arr.count
print(ave)

//今まで扱ってきたプロパティは実は全てインスタンスプロパティ
//スタティックプロパティ　or タイププロパティ：型に紐づくプロパティ
//例　Int型のmin/maxプロパティ
print(Int.min)
print(Int.max)

print(Int8.min)
print(Int8.max)


//タイププロパティの書式
//static let プロパティ名　= 値　//varでも良い

//アクセス方法
//型名、プロパティ名

//例
struct Prop{
    static let sProperty = "スタティックプロパティ"
    let iProperty = "インスタンスプロパティ"
}
print(Prop.sProperty)
print(Prop().iProperty)

//より実践的な例
//学校のクラスの情報をClassRoom構造体で扱う

struct ClassRoom{
    var name:String //クラス名
    var num:Int //生徒数
    var teacher:Human //先生
    var students:[Human] //生徒
    
    init(name:String,teacher:Human,students:[Human]){
        self.name = name
        self.teacher = teacher
        self.students = students
        self.num = students.count
        }
    }

var t = Human(name: "Tom", age: 40)//先生
var s1 = Human(name: "Alice", age: 15)//生徒
var s2 = Human(name: "Bob", age: 15)//生徒
var s3 = Human(name: "Charly", age: 16)//生徒

var sArr = [s1,s2,s3]
print(type(of: sArr))

var cr = ClassRoom(name: "3-A", teacher: t, students: sArr)
print(type(of: cr))

print(cr.teacher.name)
print(cr.num)

for i in 0 ..< cr.students.count{
    print(cr.students[i].name)
}

