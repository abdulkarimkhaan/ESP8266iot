//
//  ViewController.swift
//  ESP8266 Controller
//
//  Created by Abdul  Karim Khan on 12/06/2018.
//  Copyright © 2018 Abdul  Karim Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
  
    @IBOutlet weak var lightons: UIButton!
    @IBOutlet weak var lightoffs: UIButton!
    @IBOutlet weak var webciew1: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func lightON(_ sender: UIButton) {
        
        
        let led1on_URL = URL(string: "http://192.168.4.1/OFF")
        let request = URLRequest(url: led1on_URL!)
        webview.loadRequest(request)
        
    }
    
    @IBAction func lightOff(_ sender: UIButton) {
       
        let led1off_URL = URL(string: "http://192.168.4.1/ON")
        let request1 = URLRequest(url: led1off_URL!)
        webview.loadRequest(request1)
    }
    
    @IBAction func Right(_ sender: UIButton) {
        let right_URL = URL(string: "http://192.168.4.1/fan0")
        let request2 = URLRequest(url: right_URL!)
        webview.loadRequest(request2)
    }
    @IBAction func Rightrelease(_ sender: UIButton) {
        let rightr_URL = URL(string: "http://192.168.4.1/fan1")
        let request3 = URLRequest(url: rightr_URL!)
        webview.loadRequest(request3)
    }
    
    @IBAction func Left(_ sender: UIButton) {
        let left_URL = URL(string: "http://192.168.4.1/ac0")
        let request4 = URLRequest(url: left_URL!)
        webview.loadRequest(request4)
    }
    
    @IBAction func Leftrelease(_ sender: UIButton) {
        let leftr_URL = URL(string: "http://192.168.4.1/ac1")
        let request5 = URLRequest(url: leftr_URL!)
        webview.loadRequest(request5)
    }
    
    
    @IBAction func Reverse(_ sender: UIButton) {
        let reverse_URL = URL(string: "http://192.168.4.1/lighton")
        let request6 = URLRequest(url: reverse_URL!)
        webview.loadRequest(request6)
    }
    
    @IBAction func Reverserelease(_ sender: UIButton) {
        let reverser_URL = URL(string: "http://192.168.4.1/lightoff")
        let request7 = URLRequest(url: reverser_URL!)
        webview.loadRequest(request7)
    }
    
}

