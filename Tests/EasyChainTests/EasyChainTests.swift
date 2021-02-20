import XCTest
@testable import UIKitChain

final class EasyChainTests: XCTestCase {
    func testExample() {
        
        /// button
        let bt = UIButton()
            .chain
            .setTitle("bt", for: .normal)
            .setTitleColor(.red, for: .normal)
            .titleEdgeInsets(.zero)
            .wrapper
        
        let view = UIView()
            .chain
            .backgroundColor(.white)
            .cornerRadius(4)
            .wrapper
        
        view.chain.addSubview(bt)
        view.chain.backgroundColor(.black)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
