
public protocol UserDataProvider {
    var shared: UserDataProvider { get }
    var name: String { get }
    var email: String { get }
}
