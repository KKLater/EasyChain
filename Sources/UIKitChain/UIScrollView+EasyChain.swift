//
//  UIScrollView+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

extension EasyChain where Base: UIScrollView {
    
    @discardableResult func contentOffset(_ contentOffset: CGPoint) -> Self {
        make { $0.contentOffset = contentOffset }
    }
    
    @discardableResult func contentOffset(x: CGFloat, y: CGFloat) -> Self {
        make { $0.contentOffset = CGPoint(x: x, y: y) }
    }
    
    @discardableResult func contentSize(_ contentSize: CGSize) -> Self {
        make { $0.contentSize = contentSize }
    }
    
    @discardableResult func contentSize(width: CGFloat, height: CGFloat) -> Self {
        make { $0.contentSize = CGSize(width: width, height: height) }
    }
    
    @discardableResult func contentInset(_ contentInset: UIEdgeInsets) -> Self {
        make { $0.contentInset = contentInset }
    }
    
    @discardableResult func contentInset(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> Self {
        make { $0.contentInset = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right) }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func adjustedContentInsetDidChange() -> Self {
        make { $0.adjustedContentInsetDidChange() }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
        make { $0.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior }
    }
    
    @available(iOS 13.0, *)
    @discardableResult func automaticallyAdjustsScrollIndicatorInsets(_ automaticallyAdjustsScrollIndicatorInsets: Bool) -> Self {
        make { $0.automaticallyAdjustsScrollIndicatorInsets = automaticallyAdjustsScrollIndicatorInsets }
    }
    
    @discardableResult func delegate(_ delegate: UIScrollViewDelegate?) -> Self {
        make { $0.delegate = delegate }
    }
    
    @discardableResult func isDirectionalLockEnabled(_ isDirectionalLockEnabled: Bool) -> Self {
        make { $0.isDirectionalLockEnabled = isDirectionalLockEnabled }
    }
    
    @discardableResult func bounces(_ bounces: Bool) -> Self {
        make { $0.bounces = bounces }
    }
    
    @discardableResult func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> Self {
        make { $0.alwaysBounceVertical = alwaysBounceVertical }
    }
    
    @discardableResult func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> Self {
        make { $0.alwaysBounceHorizontal = alwaysBounceHorizontal }
    }
    
    @discardableResult func isPagingEnabled(_ isPagingEnabled: Bool) -> Self {
        make { $0.isPagingEnabled = isPagingEnabled }
    }
    
    @discardableResult func isScrollEnabled(_ isScrollEnabled: Bool) -> Self {
        make { $0.isScrollEnabled = isScrollEnabled }
    }
    
    @discardableResult func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> Self {
        make { $0.showsVerticalScrollIndicator = showsVerticalScrollIndicator }
    }
    
    @discardableResult func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> Self {
        make { $0.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator }
    }
    
    @discardableResult func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> Self {
        make { $0.indicatorStyle = indicatorStyle }
    }
    
    @available(iOS 11.1, *)
    @discardableResult func verticalScrollIndicatorInsets(_ verticalScrollIndicatorInsets: UIEdgeInsets) -> Self {
        make { $0.verticalScrollIndicatorInsets = verticalScrollIndicatorInsets }
    }
    
    @available(iOS 11.1, *)
    @discardableResult func horizontalScrollIndicatorInsets(_ horizontalScrollIndicatorInsets: UIEdgeInsets) -> Self {
        make { $0.horizontalScrollIndicatorInsets = horizontalScrollIndicatorInsets }
    }
    
    @discardableResult func scrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets) -> Self {
        make { $0.scrollIndicatorInsets = scrollIndicatorInsets }
    }
    
    @available(iOS 3.0, *)
    @discardableResult func decelerationRate(_ decelerationRate: UIScrollView.DecelerationRate) -> Self {
        make { $0.decelerationRate = decelerationRate }
    }
    
    @discardableResult func indexDisplayMode(_ indexDisplayMode: UIScrollView.IndexDisplayMode) -> Self {
        make { $0.indexDisplayMode = indexDisplayMode }
    }
    
    @discardableResult func setContentOffset(_ contentOffset: CGPoint, animated: Bool) -> Self {
        make { $0.setContentOffset(contentOffset, animated: animated) }
    }
    
    @discardableResult func setContentOffset(x: CGFloat, y: CGFloat, animated: Bool) -> Self {
        make { $0.setContentOffset(CGPoint(x: x, y: y), animated: animated) }
    }
    
    @discardableResult func scrollRectToVisible(_ rect: CGRect, animated: Bool) -> Self {
        make { $0.scrollRectToVisible(rect, animated: animated) }
    }
    
    @discardableResult func flashScrollIndicators() -> Self {
        make { $0.flashScrollIndicators() }
    }
    
    @discardableResult func delaysContentTouches(_ delaysContentTouches: Bool) -> Self {
        make { $0.delaysContentTouches = delaysContentTouches }
    }
    
    @discardableResult func canCancelContentTouches(_ canCancelContentTouches: Bool) -> Self {
        make { $0.canCancelContentTouches = canCancelContentTouches }
    }
    
    @discardableResult func minimumZoomScale(_ minimumZoomScale: CGFloat) -> Self {
        make { $0.minimumZoomScale = minimumZoomScale }
    }
    
    @discardableResult func maximumZoomScale(_ maximumZoomScale: CGFloat) -> Self {
        make { $0.maximumZoomScale = maximumZoomScale }
    }
    
    @available(iOS 3.0, *)
    @discardableResult func zoomScale(_ zoomScale: CGFloat) -> Self {
        make { $0.zoomScale = zoomScale }
    }
    
    @available(iOS 3.0, *)
    @discardableResult func setZoomScale(_ scale: CGFloat, animated: Bool) -> Self {
        make { $0.setZoomScale(scale, animated: animated) }
    }
    
    @available(iOS 3.0, *)
    @discardableResult func zoom(to rect: CGRect, animated: Bool) -> Self {
        make { $0.zoom(to: rect, animated: animated) }
    }
    
    @discardableResult func bouncesZoom(_ bouncesZoom: Bool) -> Self {
        make { $0.bouncesZoom = bouncesZoom }
    }
    
    @discardableResult func scrollsToTop(_ scrollsToTop: Bool) -> Self {
        make { $0.scrollsToTop = scrollsToTop }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> Self {
        make { $0.keyboardDismissMode = keyboardDismissMode }
    }
    
    @available(iOS 10.0, *)
    @discardableResult func refreshControl(_ refreshControl: UIRefreshControl?) -> Self {
        make { $0.refreshControl = refreshControl }
    }
}
