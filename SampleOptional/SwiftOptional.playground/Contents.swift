import Foundation

/// ユーザクラス
class User {
    var name = ""
    var age = 0
    
    convenience init(name: String, age: Int) {
        self.init()
        self.name = name
        self.age = age
    }
    
    /// 自己紹介
    func selfIntroduction() {
        print("「私の名前は、\(name)です。年齢は、\(age)歳です。」")
    }
}

/// アプリクラス
class App {
    var userAge: Int?
    var userName: String?
    var user: User?
    
    /// main関数
    func main() {
        print("-----データセット前-----")
        printUserInfo()
        printUser()
        
        setUserData()
        
        print("-----データセット後-----")
        printUserInfo()
        printUser()
    }
    
    /// ユーザ情報を設定する
    func setUserData() {
        // サンプルデータ
        let name = "おくでらゆーき"
        let age = 100
        userName = name
        userAge = age
        user = User(name: name, age: age)
    }
    
    /// ユーザの年齢、名前をコンソールに出力する
    ///
    /// Optional Binding, Nil Coalescing Operatorを使用
    func printUserInfo() {
        // userAgeがnilではない場合、if分岐の中に入る
        // ここで定義するuserAgeは、if文の中でのみ有効
        if let userAge = self.userAge {
            print("userAge", userAge)
        }
        
        // userNameがnil出ない場合、userNameの値を使用し、
        // nilの場合、'name'に"名無し"をセットする
        let name = userName ?? "名無し"
        print("name", name)
    }
    
    /// ユーザオブジェクトの情報をコンソールに出力する
    ///
    /// Optional Chaining, guard文を使用
    func printUser() {
        
        // userがnilでなければ、selfIntroductionを実行する
        user?.selfIntroduction()
        
        // userがnilの場合、後続処理を実行せずreturnする
        guard let user = self.user else {
            print("user is nil.")
            return
        }
        print("user.age", user.age)
        print("user.name", user.name)
    }
}

let app = App()
app.main()
