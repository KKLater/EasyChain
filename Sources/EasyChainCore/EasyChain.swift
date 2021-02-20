
import Foundation

public struct EasyChain<Base> {
    public var wrapper: Base
    init(_ wrapper: Base) {
        self.wrapper = wrapper
    }
}

public extension EasyChain {
    func make(_ closure: (Base) -> Void) -> Self {
        closure(wrapper)
        return self
    }
}

public protocol EasyChainCompatible {}
public extension EasyChainCompatible {
    var chain: EasyChain<Self> { return EasyChain(self) }
    static var chain: EasyChain<Self>.Type { EasyChain<Self>.self }
}

