/// @mockable
public protocol Client<Value> {
    associatedtype Value
    func perform(value: Value) async throws
}

public struct ClientImpl: Client {

    public typealias Value = Optional<Int>

    public func perform(value: Value) async throws {
        if let value {
            print(value)
        } else {
            print("nil")
        }
    }
}
