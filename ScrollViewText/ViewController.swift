//
//  ViewController.swift
//  ScrollViewText
//
//  Created by maomao on 2017/11/23.
//  Copyright © 2017年 maomao. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton(frame:CGRect(x: 100, y: 100, width: 100, height: 100))
        button.backgroundColor = UIColor.red
        button.addTarget(self, action:#selector(tapped) , for: .touchUpInside)
        
        
        self.view.addSubview(button)
        
        
    }
    
    @objc func tapped(){
        let vc = HomeScrollPageView()
        self.present(vc, animated: true, completion: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

