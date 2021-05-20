import XCTest
@testable import UIKitChain
@testable import UIKitEasy


class Cell: UITableViewCell {
    
}

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
            .hitTest(CGPoint.zero, with: UIEvent(), closure: { (view) in
                print(view)
            })
            .cornerRadius(4)
            .wrapper

        view.chain.addSubview(bt)
        view.chain.backgroundColor(.black)
        
        print(Cell.es.reuseIdentifier)
        
        UIView.chain.animate(withDuration: 0.1, delay: 0.1) {
            print("a")
        }.animate(withDuration: 0.2, delay: 0.4) {
            print("b")
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
