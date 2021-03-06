
import Foundation


/// Chain
public struct Chain<Base> {
    public var wrapper: Base
    init(_ wrapper: Base) {
        self.wrapper = wrapper
    }
}

public extension Chain {
    func make(_ closure: (Base) -> Void) -> Self {
        closure(wrapper)
        return self
    }
    
    var print: Self {
        Swift.print(self)
        return self
    }
    
    var printWrapper: Self {
        Swift.print(wrapper)
        return self
    }
    
    var debugPrint: Self {
        Swift.debugPrint("⛓⛓⛓⛓⛓⛓⛓ Chain DebugPrint", self)
        Swift.debugPrint("⛓⛓⛓⛓⛓⛓⛓ Chain Wrapper Value", wrapper)
        return self
    }
    
    var debugPrintWrapper: Self {
        Swift.debugPrint("⛓⛓⛓⛓⛓⛓⛓ Chain Wrapper Value", wrapper)
        return self
    }
}

public protocol ChainCompatible {}
public extension ChainCompatible {
    var chain: Chain<Self> { return Chain(self) }
    static var chain: Chain<Self>.Type { Chain<Self>.self }
}


