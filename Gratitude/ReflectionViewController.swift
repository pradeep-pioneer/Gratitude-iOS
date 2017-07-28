//
//  ReflectionViewController.swift
//  Gratitude
//
//  Created by Pradeep Singh on 28/07/17.
//  Copyright © 2017 Pradeep Singh. All rights reserved.
//

import UIKit

class ReflectionViewController: UIViewController , UIWebViewDelegate{
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let urlRequest = URLRequest(url: URL(string : "http://www.aa.org/pages/en_US/daily-reflection")!, cachePolicy: .returnCacheDataElseLoad, timeoutInterval: 10)
        self.webView.loadRequest(urlRequest)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        let scrollPoint = CGPoint(x: 0, y: 500)
        webView.scrollView.setContentOffset(scrollPoint,animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
