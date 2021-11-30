//
//  WebViewController.swift
//  bmiCalculatorApp
//
//  Created by Joseph Kim on 11/26/21.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnGoNaver(_ sender: UIButton) {
        guard let url = URL(string: "https://www.google.com") else {return}
        let request = URLRequest(url: url)
        webView?.load(request)
    }
}
