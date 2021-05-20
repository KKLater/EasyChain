//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit

public extension UIImage {
    
    /// 依据颜色，生成新的图片
    /// - Parameter color: 颜色
    convenience init?(with color: UIColor) {
        self.init()
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }
}

extension UIImage: EasyCompatible {}

public extension Easy where Base: UIImage {
    
    /// 圆形图片
    var circle: UIImage? {
        let shortest = min(wrapper.size.width, wrapper.size.height)
        return clip(cornerRadius: shortest / 2, size: wrapper.size)
    }
    
  
    
    /// 裁切图片
    /// - Parameters:
    ///   - cornerRadius: 图片圆角
    ///   - size: 裁切范围
    /// - Returns: 新的图片
    func clip(cornerRadius: CGFloat, size: CGSize) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, wrapper.scale)
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIBezierPath(roundedRect:rect, cornerRadius: cornerRadius).addClip()
        wrapper.draw(in: rect)
        guard let image : UIImage = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        return image
    }
    
    /// 图片渲染新的颜色
    /// - Parameter color: 渲染色
    /// - Returns: 新的图片
    func tint(color: UIColor) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(wrapper.size, false, 0)
        color.setFill()
        let bounds = CGRect(x: 0, y: 0, width: wrapper.size.width, height: wrapper.size.height)
        UIRectFill(bounds)
        wrapper.draw(in: bounds, blendMode: .destinationIn, alpha: 1)
        guard let tintedImage = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        return tintedImage
    }
    
    /// 裁切图片，获取新的图片
    /// - Parameter rect: 裁切图片范围
    /// - Returns: 新图片
    func crop(to rect: CGRect) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(rect.size, false, wrapper.scale)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        let drawRect = CGRect(x: -rect.origin.x, y: -rect.origin.y, width: wrapper.size.width, height: wrapper.size.height)
        context.clip(to: CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        wrapper.draw(in: drawRect)
      
        guard let image = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        return image
    }
}


public extension Easy where Base: UIImage {

    enum FitMode: Int {
        case scaleToFill
        case aspectFit
        case aspectFill
    }
    
    /// 缩放
    /// - Parameter value: 缩放比例
    /// - Returns: 缩放后的图片
    func scale(_ value: CGFloat) -> UIImage? {
        let reSize = CGSize(width: wrapper.size.width * value,height: wrapper.size.height * value)
        return resize(reSize, mode: .scaleToFill)
    }
    
    /// 重设图片大小
    /// - Parameters:
    ///   - size: 新的图片尺寸大小
    ///   - mode: 缩放模式
    /// - Returns: 新图片
    func resize(_ size: CGSize, mode: FitMode) -> UIImage? {
        guard let imgRef = wrapper.cgImage else { return nil }
        let originalWidth  = CGFloat(imgRef.width)
        let originalHeight = CGFloat(imgRef.height)
        let widthRatio = size.width / originalWidth
        let heightRatio = size.height / originalHeight
        
        let scaleRatio = mode == .aspectFit ? min(heightRatio, widthRatio) : max(heightRatio, widthRatio)
        
        let resizedImageBounds = CGRect(x: 0, y: 0, width: round(originalWidth * scaleRatio), height: round(originalHeight * scaleRatio))
        guard let resizedImage = privateDraw(in: resizedImageBounds) else { return nil}
        
        switch (mode) {
        case .aspectFill:
            let croppedRect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
            return resizedImage.easy.crop(to: croppedRect)
        case .aspectFit:
            let x = (resizedImage.size.width - size.width) / 2
            let y = (resizedImage.size.height - size.height) / 2
            let croppedRect = CGRect(x: x, y: y, width: size.width, height: size.height)
            return resizedImage.easy.crop(to: croppedRect)
        case .scaleToFill:
            return resizedImage.easy.privateDraw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        }
    }
    
    /// # private method
    private func privateDraw(in bounds : CGRect) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, wrapper.scale)
        wrapper.draw(in: bounds)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

public extension Easy where Base: UIImage {

    /// 压缩图片到指定字节
    /// - Parameters:
    ///   - maxCount: 最大字节数
    ///   - maxLength: 最长长度（宽或高）
    /// - Returns: 压缩后的字节data
    func compress(to maxCount: Int, maxLength: CGFloat) -> Data? {
        let newSize = scaleSize(maxLength)
        guard let newImage = resize(newSize, mode: .scaleToFill) else { return nil }
        var compress:CGFloat = 0.9
        var data = newImage.jpegData(compressionQuality: compress)
        while (data?.count ?? 0) > maxCount && compress > 0.01 {
            compress -= 0.02
            data = newImage.jpegData(compressionQuality: compress)
        }
        return data
    }
    
    func scaleSize(_ maxLength: CGFloat) -> CGSize {
        var newWidth:CGFloat = 0.0
        var newHeight:CGFloat = 0.0
        let width = wrapper.size.width
        let height = wrapper.size.height
        if (width > maxLength || height > maxLength){
            if (width > height) {
                newWidth = maxLength;
                newHeight = newWidth * height / width;
            }else if(height > width){
                newHeight = maxLength;
                newWidth = newHeight * width / height;
            }else{
                newWidth = maxLength;
                newHeight = maxLength;
            }
        }
        return CGSize(width: newWidth, height: newHeight)
    }
}

public extension Easy where Base: UIImage {

    var screenShot: UIImage? {
        var imageSize = CGSize.zero
        let screenSize = UIScreen.main.bounds.size
        let orientation = UIApplication.shared.statusBarOrientation
        if orientation.isPortrait {
            imageSize = screenSize
        } else {
            imageSize = CGSize(width: screenSize.height, height: screenSize.width)
        }
        
        UIGraphicsBeginImageContextWithOptions(imageSize, false, 0)
        if let context = UIGraphicsGetCurrentContext() {
            for window in UIApplication.shared.windows {
                context.saveGState()
                context.translateBy(x: window.center.x, y: window.center.y)
                context.concatenate(window.transform)
                context.translateBy(x: -window.bounds.size.width * window.layer.anchorPoint.x, y: -window.bounds.size.height * window.layer.anchorPoint.y)
                
                if orientation == UIInterfaceOrientation.landscapeLeft {
                    context.rotate(by: .pi / 2)
                    context.translateBy(x: 0, y: -imageSize.width)
                } else if orientation == UIInterfaceOrientation.landscapeRight {
                    context.rotate(by: -.pi / 2)
                    context.translateBy(x: -imageSize.height, y: 0)
                } else if orientation == UIInterfaceOrientation.portraitUpsideDown {
                    context.rotate(by: .pi)
                    context.translateBy(x: -imageSize.width, y: -imageSize.height)
                }
                if window.responds(to: #selector(UIView.drawHierarchy(in:afterScreenUpdates:))) {
                    window.drawHierarchy(in: window.bounds, afterScreenUpdates: true)
                } else {
                    window.layer.render(in: context)
                }
                context.restoreGState()
            }
        }
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
