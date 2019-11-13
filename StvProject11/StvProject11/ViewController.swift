//
//  ViewController.swift
//  StvProject11
//
//  Created by kazua on 2018/03/19.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var toolbar: UIToolbar!
    
    // LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webViewSetUp()
    }
    
    // MARK: set up
    
    private func webViewSetUp() {
        // http接続テスト用
        let myURL = URL(string: "http://www.metro.tokyo.jp//")
        // https接続テスト用
//        let myURL = URL(string: "https://www.apple.com/")
        
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    // MARK: IBAction
    @IBAction func backBtn(_ sender: Any) {
        webView.goBack()
    }
    
    @IBAction func forwardBtn(_ sender: Any) {
        webView.goForward()
    }
    
    @IBAction func refreshBtn(_ sender: Any) {
        webView.reload()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}
