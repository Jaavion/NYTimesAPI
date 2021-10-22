//
//  WebKitViewController.swift
//  NYTimesAPI
//
//  Created by Jaavion Davis on 10/17/21.
//

import UIKit
import WebKit
class WebKitViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    var url:String?
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let url = URL(string: url!)
        webView.load(URLRequest(url: url!))
        webView.allowsBackForwardNavigationGestures = true

        // Do any additional setup after loading the view.
    }
    
    
    

}
