//
//  UIViewController+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

extension UIViewController: ChainCompatible {}
public extension Chain where Base: UIViewController {
    
    @discardableResult func view(_ view: UIView!) -> Self {
        make { $0.view = view }
    }

    @discardableResult func loadView() -> Self {
        make { $0.loadView() }
    }

    @available(iOS 9.0, *)
    @discardableResult func loadViewIfNeeded() -> Self {
        make { $0.loadViewIfNeeded() }
    }
    
    @discardableResult func viewDidLoad() -> Self {
        make { $0.viewDidLoad() }
    }
    
    @available(iOS 5.0, *)
    @discardableResult func performSegue(withIdentifier identifier: String, sender: Any?) -> Self {
        make { $0.performSegue(withIdentifier: identifier, sender: sender) }
    }

    @available(iOS 5.0, *)
    @discardableResult func prepare(for segue: UIStoryboardSegue, sender: Any?) -> Self {
        make { $0.prepare(for: segue, sender: sender) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) -> Self {
        make { $0.unwind(for: unwindSegue, towards: subsequentVC) }
    }
    
    @discardableResult func viewWillAppear(_ animated: Bool) -> Self {
        make { $0.viewWillAppear(animated) }
    }
    
    @discardableResult func viewDidAppear(_ animated: Bool) -> Self {
        make { $0.viewDidAppear(animated) }
    }

    @discardableResult func viewWillDisappear(_ animated: Bool) -> Self {
        make { $0.viewWillDisappear(animated) }
    }

    @discardableResult func viewDidDisappear(_ animated: Bool) -> Self {
        make { $0.viewDidDisappear(animated) }
    }

    @available(iOS 5.0, *)
    @discardableResult func viewWillLayoutSubviews() -> Self {
        make { $0.viewWillLayoutSubviews() }
    }

    @available(iOS 5.0, *)
    @discardableResult func viewDidLayoutSubviews() -> Self {
        make { $0.viewDidLayoutSubviews() }
    }

    @discardableResult func title(_ title: String?) -> Self {
        make { $0.title = title }
    }

    @discardableResult func didReceiveMemoryWarning() -> Self {
        make { $0.didReceiveMemoryWarning() }
    }

    @available(iOS 5.0, *)
    @discardableResult func definesPresentationContext(_ definesPresentationContext: Bool) -> Self {
        make { $0.definesPresentationContext = definesPresentationContext }
    }

    @available(iOS 5.0, *)
    @discardableResult func providesPresentationContextTransitionStyle(_ providesPresentationContextTransitionStyle: Bool) -> Self {
        make { $0.providesPresentationContextTransitionStyle = providesPresentationContextTransitionStyle }
    }

    @available(iOS 10.0, *)
    @discardableResult func restoresFocusAfterTransition(_ restoresFocusAfterTransition: Bool) -> Self {
        make { $0.restoresFocusAfterTransition = restoresFocusAfterTransition }
    }
    
    @available(iOS 5.0, *)
    @discardableResult func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) -> Self {
        make { $0.present(viewControllerToPresent, animated: flag, completion: completion) }
    }

    @available(iOS 5.0, *)
    @discardableResult func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) -> Self {
        make { $0.dismiss(animated: flag, completion: completion) }
    }

    @available(iOS 3.0, *)
    @discardableResult func modalTransitionStyle(_ modalTransitionStyle: UIModalTransitionStyle) -> Self {
        make { $0.modalTransitionStyle = modalTransitionStyle }
    }

    @available(iOS 3.2, *)
    @discardableResult func modalPresentationStyle(_ modalPresentationStyle: UIModalPresentationStyle) -> Self {
        make { $0.modalPresentationStyle = modalPresentationStyle }
    }

    @available(iOS 7.0, *)
    @discardableResult func modalPresentationCapturesStatusBarAppearance(_ modalPresentationCapturesStatusBarAppearance: Bool) -> Self {
        make { $0.modalPresentationCapturesStatusBarAppearance = modalPresentationCapturesStatusBarAppearance }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func edgesForExtendedLayout(_ edgesForExtendedLayout: UIRectEdge) -> Self {
        make { $0.edgesForExtendedLayout = edgesForExtendedLayout }
    }
      
    @available(iOS 7.0, *)
    @discardableResult func extendedLayoutIncludesOpaqueBars(_ extendedLayoutIncludesOpaqueBars: Bool) -> Self {
        make { $0.extendedLayoutIncludesOpaqueBars = extendedLayoutIncludesOpaqueBars }
    }

    @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use UIScrollView's contentInsetAdjustmentBehavior instead")
    @discardableResult func automaticallyAdjustsScrollViewInsets(_ automaticallyAdjustsScrollViewInsets: Bool) -> Self {
        make { $0.automaticallyAdjustsScrollViewInsets = automaticallyAdjustsScrollViewInsets }
    }

    @available(iOS 7.0, *)
    @discardableResult func preferredContentSize(_ preferredContentSize: CGSize) -> Self {
        make { $0.preferredContentSize = preferredContentSize }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func preferredContentSize(width: CGFloat, height: CGFloat) -> Self {
        make { $0.preferredContentSize = CGSize(width: width, height: height) }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func setNeedsStatusBarAppearanceUpdate() -> Self {
        make { $0.setNeedsStatusBarAppearanceUpdate() }
    }
    
    @available(iOS 8.0, *)
    @discardableResult func show(_ vc: UIViewController, sender: Any?) -> Self {
        make { $0.show(vc, sender: sender) }
    }

    @available(iOS 8.0, *)
    @discardableResult func showDetailViewController(_ vc: UIViewController, sender: Any?) -> Self {
        make { $0.showDetailViewController(vc, sender: sender) }
    }

    @available(iOS 13.0, *)
    @discardableResult func overrideUserInterfaceStyle(_ overrideUserInterfaceStyle: UIUserInterfaceStyle) ->Self {
        make { $0.overrideUserInterfaceStyle = overrideUserInterfaceStyle }
    }
    
    @discardableResult func isEditing(_ isEditing: Bool) -> Self {
        make { $0.isEditing = isEditing }
    }

    @discardableResult func setEditing(_ editing: Bool, animated: Bool) -> Self {
        make { $0.setEditing(editing, animated: animated) }
    }
    
    @available(iOS 5.0, *)
    @discardableResult func addChild(_ childController: UIViewController) -> Self {
        make { $0.addChild(childController) }
    }
    
    @available(iOS 5.0, *)
    @discardableResult func addChilds(_ childControllers: UIViewController...) -> Self {
        make { vc in
            childControllers.forEach { vc.addChild($0) }
        }
    }
    
    @available(iOS 5.0, *)
    @discardableResult func removeFromParent() -> Self {
        make { $0.removeFromParent() }
    }

    @available(iOS 5.0, *)
    @discardableResult func transition(from fromViewController: UIViewController, to toViewController: UIViewController, duration: TimeInterval, options: UIView.AnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil) -> Self {
        make { $0.transition(from: fromViewController, to: toViewController, duration: duration, options: options, animations: animations, completion: completion)}
    }
    
    @available(iOS 5.0, *)
    @discardableResult func beginAppearanceTransition(_ isAppearing: Bool, animated: Bool) -> Self {
        make { $0.beginAppearanceTransition(isAppearing, animated: animated) }
    }

    @available(iOS 5.0, *)
    @discardableResult func endAppearanceTransition() -> Self {
        make { $0.endAppearanceTransition() }
    }
    
    @available(iOS 8.0, *)
    @discardableResult func setOverrideTraitCollection(_ collection: UITraitCollection?, forChild childViewController: UIViewController) -> Self {
        make { $0.setOverrideTraitCollection(collection, forChild: childViewController) }
    }

    @available(iOS 5.0, *)
    @discardableResult func willMove(toParent parent: UIViewController?) -> Self {
        make { $0.willMove(toParent: parent) }
    }

    @available(iOS 5.0, *)
    @discardableResult func didMove(toParent parent: UIViewController?) -> Self {
        make { $0.didMove(toParent: parent) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func restorationIdentifier(_ restorationIdentifier: String?) -> Self {
        make { $0.restorationIdentifier = restorationIdentifier }
    }

    @available(iOS 6.0, *)
    @discardableResult func restorationClass(_ restorationClass: UIViewControllerRestoration.Type?) -> Self {
        make { $0.restorationClass = restorationClass }
    }

    @available(iOS 6.0, *)
    @discardableResult func encodeRestorableState(with coder: NSCoder) -> Self {
        make { $0.encodeRestorableState(with: coder) }
    }

    @available(iOS 6.0, *)
    @discardableResult func decodeRestorableState(with coder: NSCoder) -> Self {
        make { $0.decodeRestorableState(with: coder) }
    }

    @available(iOS 7.0, *)
    @discardableResult func applicationFinishedRestoringState() -> Self {
        make { $0.applicationFinishedRestoringState() }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func updateViewConstraints() -> Self {
        make { $0.updateViewConstraints() }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func transitioningDelegate(_ transitioningDelegate: UIViewControllerTransitioningDelegate?) -> Self {
        make { $0.transitioningDelegate = transitioningDelegate }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func additionalSafeAreaInsets(_ additionalSafeAreaInsets: UIEdgeInsets) -> Self {
        make { $0.additionalSafeAreaInsets = additionalSafeAreaInsets }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func viewRespectsSystemMinimumLayoutMargins(_ viewRespectsSystemMinimumLayoutMargins: Bool) -> Self {
        make { $0.viewRespectsSystemMinimumLayoutMargins = viewRespectsSystemMinimumLayoutMargins }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func viewLayoutMarginsDidChange() -> Self {
        make { $0.viewLayoutMarginsDidChange() }
    }

    @available(iOS 11.0, *)
    @discardableResult func viewSafeAreaInsetsDidChange() -> Self {
        make { $0.viewSafeAreaInsetsDidChange() }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func addKeyCommand(_ keyCommand: UIKeyCommand) -> Self {
        make { $0.addKeyCommand(keyCommand) }
    }

    @available(iOS 9.0, *)
    @discardableResult func removeKeyCommand(_ keyCommand: UIKeyCommand) -> Self {
        make { $0.removeKeyCommand(keyCommand) }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func setNeedsUpdateOfScreenEdgesDeferringSystemGestures() -> Self {
        make { $0.setNeedsUpdateOfScreenEdgesDeferringSystemGestures() }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func setNeedsUpdateOfHomeIndicatorAutoHidden() -> Self {
        make { $0.setNeedsUpdateOfHomeIndicatorAutoHidden() }
    }
    
    @available(iOS 14.0, *)
    @discardableResult func setNeedsUpdateOfPrefersPointerLocked() -> Self {
        make { $0.setNeedsUpdateOfPrefersPointerLocked() }
    }
}
