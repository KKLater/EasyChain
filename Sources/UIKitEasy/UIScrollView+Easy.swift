//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit

public extension Easy where Base: UIScrollView {
    
    var visibleRect: CGRect {
        let contentWidth = wrapper.contentSize.width - wrapper.contentOffset.x
        let contentHeight = wrapper.contentSize.height - wrapper.contentOffset.y
        let width = min(min(wrapper.bounds.size.width, wrapper.contentSize.width), contentWidth)
        let height = min(min(wrapper.bounds.size.height, wrapper.contentSize.height), contentHeight)
        let size = CGSize(width: width, height: height)
        return CGRect(origin: wrapper.contentOffset, size: size)
    }
    
    var snapshot: UIImage? {
        UIGraphicsBeginImageContextWithOptions(wrapper.contentSize, false, 0)
        defer { UIGraphicsEndImageContext() }
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        let previousFrame = wrapper.frame
        wrapper.frame = CGRect(origin: wrapper.frame.origin, size: wrapper.contentSize)
        wrapper.layer.render(in: context)
        wrapper.frame = previousFrame
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}

public extension Easy where Base: UIScrollView {

    enum ScrollDirection {
        case top
        case bottom
        case left
        case right
    }

    /// 滚动到
    /// - Parameters:
    ///   - direction: 方向
    ///   - animated: 是否动效
    ///   - completion: 滚动结束回调
    func scroll(to direction: ScrollDirection, animated: Bool = true, completion:(() -> Void)? = nil) {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        switch direction {
        case .top:
            let point = CGPoint(x: wrapper.contentOffset.x, y: -wrapper.contentInset.top)
            wrapper.setContentOffset(point, animated: animated)
        case .bottom:
            let point = CGPoint(x: wrapper.contentOffset.x, y: max(0, wrapper.contentSize.height - wrapper.bounds.height) + wrapper.contentInset.bottom)
            wrapper.setContentOffset(point, animated: animated)
        case .left:
            let point = CGPoint(x: -wrapper.contentInset.left, y: wrapper.contentOffset.y)
            wrapper.setContentOffset(point, animated: animated)
        case .right:
            let point = CGPoint(x: max(0, wrapper.contentSize.width - wrapper.bounds.width) + wrapper.contentInset.right, y: wrapper.contentOffset.y)
            wrapper.setContentOffset(point, animated: animated)
        }
        CATransaction.commit()
    }
    
    /// 翻页
    /// - Parameters:
    ///   - direction: 翻页方向
    ///   - animated: 是否动效
    ///   - completion: 翻页结束回调
    ///
    ///         如果 `isPagingEnabled` 有效，则方向上翻页
    func pageScroll(to direction: ScrollDirection, animated: Bool = true, completion:(() -> Void)? = nil) {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        switch direction {
        case .top:
            let minY = -wrapper.contentInset.top
            var y = max(minY, wrapper.contentOffset.y - wrapper.bounds.height)
            #if !os(tvOS)
            if wrapper.isPagingEnabled, wrapper.bounds.height != 0 {
                let page = max(0, ((y + wrapper.contentInset.top) / wrapper.bounds.height).rounded(.down))
                y = max(minY, page * wrapper.bounds.height - wrapper.contentInset.top)
            }
            #endif
            let point = CGPoint(x: wrapper.contentOffset.x, y: y)
            wrapper.setContentOffset(point, animated: animated)
        case .bottom:
            let maxY = max(0, wrapper.contentSize.height - wrapper.bounds.height) + wrapper.contentInset.bottom
            var y = min(maxY, wrapper.contentOffset.y + wrapper.bounds.height)
            #if !os(tvOS)
            if wrapper.isPagingEnabled,
               wrapper.bounds.height != 0 {
                let page = ((y + wrapper.contentInset.top) / wrapper.bounds.height).rounded(.down)
                y = min(maxY, page * wrapper.bounds.height - wrapper.contentInset.top)
            }
            #endif
            let point = CGPoint(x: wrapper.contentOffset.x, y: y)
            wrapper.setContentOffset(point, animated: animated)
        case .left:
            let minX = -wrapper.contentInset.left
            var x = max(minX, wrapper.contentOffset.x - wrapper.bounds.width)
            #if !os(tvOS)
            if wrapper.isPagingEnabled, wrapper.bounds.width != 0 {
                let page = ((x + wrapper.contentInset.left) / wrapper.bounds.width).rounded(.down)
                x = max(minX, page * wrapper.bounds.width - wrapper.contentInset.left)
            }
            #endif
            let point = CGPoint(x: x, y: wrapper.contentOffset.y)
            wrapper.setContentOffset(point, animated: animated)
        case .right:
            let maxX = max(0, wrapper.contentSize.width - wrapper.bounds.width) + wrapper.contentInset.right
            var x = min(maxX, wrapper.contentOffset.x + wrapper.bounds.width)
            #if !os(tvOS)
            if wrapper.isPagingEnabled,
               wrapper.bounds.width != 0 {
                let page = ((x + wrapper.contentInset.left) / wrapper.bounds.width).rounded(.down)
                x = min(maxX, page * wrapper.bounds.width - wrapper.contentInset.left)
            }
            #endif
            let point = CGPoint(x: x, y: wrapper.contentOffset.y)
            wrapper.setContentOffset(point, animated: animated)
        }
        CATransaction.commit()
    }
}
