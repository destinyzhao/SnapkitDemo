//
//  ViewController.swift
//  SnapKitDemo
//
//  Created by Alex on 16/7/18.
//  Copyright © 2016年 Alex. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var view1:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.testCase3()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testCase1() -> Void {
        view1 = UIView()
        view1.backgroundColor = UIColor.redColor()
        self.view.addSubview(view1)
        
        view1.snp_makeConstraints { (make) in
            make.top.equalTo(self.view).offset(20)
            make.bottom.equalTo(self.view).offset(-20)
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
        }
    }
    
    func testCase2() -> Void {
        view1 = UIView()
        view1.backgroundColor = UIColor.redColor()
        self.view .addSubview(view1)
        
        view1.snp_makeConstraints { (make) in
            //make.width.height.equalTo(200)
            make.size.equalTo(CGSizeMake(200, 200))
            make.centerX.equalTo(self.view)
            make.centerY.equalTo(self.view)
        }
    }
    
    func testCase3() -> Void {
        let greenView = UIView()
        greenView.backgroundColor = UIColor.greenColor()
        
        let redView = UIView()
        redView.backgroundColor = UIColor.redColor()
        
        let blueView = UIView()
        blueView.backgroundColor = UIColor.blueColor()
        
        self.view.addSubview(greenView)
        self.view.addSubview(redView)
        self.view.addSubview(blueView)
        
        greenView.snp_makeConstraints { (make) in
            make.top.equalTo(84)
            make.left.equalTo(20)
            make.right.equalTo(redView.snp_left).offset(-20)
            make.width.height.equalTo(redView)
        }
        
        redView.snp_makeConstraints { (make) in
            make.top.equalTo(greenView.snp_top)
            make.right.equalTo(-20)
            make.height.equalTo(200)
        }
        
        blueView.snp_makeConstraints { (make) in
            make.top.equalTo(greenView.snp_bottom).offset(10)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.bottom.equalTo(-20)
        }
        
    }


}

