//
//  ViewController.swift
//  cau1
//
//  Created by Cntt27 on 7/5/17.
//  Copyright © 2017 Cntt27. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var a:DispatchQueue!
    @IBOutlet weak var txt: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        cau1()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func cau1(){
        let thread_1 = DispatchQueue(label: "thread_1",qos: .utility, attributes: .concurrent)
        a = thread_1
        thread_1.async{
            for i in 1000..<1010{
                print("⚫️",i)
            }
        }
        thread_1.async {
            for i in 100..<110{
                print("🔵",i)
            }
        }
        thread_1.async {
            for i in 0..<10{
                print("🔴",i)
            }
        }


    }
}

