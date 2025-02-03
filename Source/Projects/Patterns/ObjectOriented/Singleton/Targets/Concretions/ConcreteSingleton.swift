import SingletonAbstractions

class Admin: UserDataProvider {
    private static let shared = Admin()
    
    var shared: UserDataProvider {
        return Admin.shared
    }
    
    var name: String = "Tim"
    var email: String = "tim@apple.com"
    var greeting: String {
        return "Hello, \(shared.name)!"
    }

    public init() {}
}

class Employee: UserDataProvider {
    private static let shared = Employee()
    
    var shared: UserDataProvider {
        return Employee.shared
    }
    
    var name: String = "Scott"
    var email: String = "scott@apple.com"
    var greeting: String {
        return "Hello, \(shared.name)!"
    }

    public init() {}
}
