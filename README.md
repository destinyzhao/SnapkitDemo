# SnapkitDemo
swift 纯代码AutoLayout布局用snapKit框架实现demo 

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
