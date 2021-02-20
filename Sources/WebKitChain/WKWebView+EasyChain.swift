//
//  WKWebView+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import WebKit
import EasyChainCore
import UIKitChain

public extension EasyChain where Base: WKWebView {
    
    @discardableResult
    func navigationDelegate(_ navigationDelegate: WKNavigationDelegate?) -> Self {
        return make { $0.navigationDelegate = navigationDelegate }
    }
    
    @discardableResult
    func uiDelegate(_ uiDelegate: WKUIDelegate?) -> Self {
        return make { $0.uiDelegate = uiDelegate }
    }

    @discardableResult
    func load(_ request: URLRequest, closure:((WKNavigation?) -> Void)? = nil) -> Self {
        return make {
            let nav = $0.load(request)
            closure?(nav)
        }
    }
    
    
    @available(iOS 9.0, *)
    @discardableResult
    func loadFileURL(_ URL: URL, allowingReadAccessTo readAccessURL: URL, closure:((WKNavigation?) -> Void)? = nil) -> Self {
        return make {
            let nav = $0.loadFileURL(URL, allowingReadAccessTo: readAccessURL)
            closure?(nav)
        }
    }

    @discardableResult
    func loadHTMLString(_ string: String, baseURL: URL?, closure:((WKNavigation?) -> Void)? = nil) -> Self {
        return make {
            let nav = $0.loadHTMLString(string, baseURL: baseURL)
            closure?(nav)
        }
    }

    @available(iOS 9.0, *)
    @discardableResult
    func load(_ data: Data, mimeType MIMEType: String, characterEncodingName: String, baseURL: URL, closure:((WKNavigation?) -> Void)? = nil) -> Self {
        return make {
            let nav = $0.load(data, mimeType: MIMEType, characterEncodingName: characterEncodingName, baseURL: baseURL)
            closure?(nav)
        }
    }

    @discardableResult
    func go(to item: WKBackForwardListItem, closure:((WKNavigation?) -> Void)? = nil) -> Self {
        return make {
            let nav = $0.go(to: item)
            closure?(nav)
        }
    }
    
    @discardableResult
    func goBack(_ closure:((WKNavigation?) -> Void)? = nil) -> Self {
        return make {
            let nav = $0.goBack()
            closure?(nav)
        }
    }

    @discardableResult
    func goForward(_ closure:((WKNavigation?) -> Void)? = nil) -> Self {
        return make {
            let nav = $0.goForward()
            closure?(nav)
        }
    }
    
    @discardableResult
    func reload(_ closure:((WKNavigation?) -> Void)? = nil) -> Self {
        return make {
            let nav = $0.reload()
            closure?(nav)
        }
    }
   
    @discardableResult
    func reloadFromOrigin(_ closure:((WKNavigation?) -> Void)? = nil) -> Self {
        return make {
            let nav = $0.reloadFromOrigin()
            closure?(nav)
        }
    }
    @discardableResult
    func stopLoading() -> Self {
        return make { $0.stopLoading() }
    }
 
    @discardableResult
    func evaluateJavaScript(_ javaScriptString: String, completionHandler: ((Any?, Error?) -> Void)? = nil) -> Self {
        return make { $0.evaluateJavaScript(javaScriptString, completionHandler: completionHandler) }
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func takeSnapshot(with snapshotConfiguration: WKSnapshotConfiguration?, completionHandler: @escaping (UIImage?, Error?) -> Void) -> Self {
        return make { $0.takeSnapshot(with: snapshotConfiguration, completionHandler: completionHandler) }
    }

    
    @discardableResult
    func allowsBackForwardNavigationGestures(_ allowsBackForwardNavigationGestures: Bool) -> Self {
        return make { $0.allowsBackForwardNavigationGestures = allowsBackForwardNavigationGestures }
    }

    @available(iOS 9.0, *)
    @discardableResult
    func customUserAgent(_ customUserAgent: String?) -> Self {
        return make { $0.customUserAgent = customUserAgent }
    }

    @available(iOS 9.0, *)
    @discardableResult
    func allowsLinkPreview(_ allowsLinkPreview: Bool) -> Self {
        return make { $0.allowsLinkPreview = allowsLinkPreview }
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func pageZoom(_ pageZoom: CGFloat) -> Self {
        return make { $0.pageZoom = pageZoom }
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func mediaType(_ mediaType: String?) -> Self {
        return make { $0.mediaType = mediaType }
    }
}

@available(iOS 14.0, macOS 11.0, *)
public extension EasyChain where Base: WKWebView {

    @discardableResult
    func callAsyncJavaScript(_ functionBody: String, arguments: [String : Any] = [:], in frame: WKFrameInfo? = nil, in contentWorld: WKContentWorld, completionHandler: ((Result<Any, Error>) -> Void)? = nil) -> Self {
        return make { $0.callAsyncJavaScript(functionBody, arguments: arguments, in: frame, in: contentWorld, completionHandler: completionHandler) }
    }

    @discardableResult
    func createPDF(configuration: WKPDFConfiguration = .init(), completionHandler: @escaping (Result<Data, Error>) -> Void) -> Self {
        return make { $0.createPDF(configuration: configuration, completionHandler: completionHandler) }
    }

    @discardableResult
    func createWebArchiveData(completionHandler: @escaping (Result<Data, Error>) -> Void) -> Self {
        return make { $0.createWebArchiveData(completionHandler: completionHandler) }
    }

    @discardableResult
    func evaluateJavaScript(_ javaScript: String, in frame: WKFrameInfo? = nil, in contentWorld: WKContentWorld, completionHandler: ((Result<Any, Error>) -> Void)? = nil) -> Self {
        return make { $0.evaluateJavaScript(javaScript, in: frame, in: contentWorld, completionHandler: completionHandler) }
    }

    @discardableResult
    func find(_ string: String, configuration: WKFindConfiguration = .init(), completionHandler: @escaping (WKFindResult) -> Void) -> Self {
        return make { $0.find(string, configuration: configuration, completionHandler: completionHandler) }
    }
}
