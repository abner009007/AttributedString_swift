//
//  ViewController.swift
//  AttributedString_swift
//
//  Created by 云中科技 on 2018/3/22.
//  Copyright © 2018年 云中科技. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let string = attributedString(stringBig: "200钻", stringSmall: "(首冲送20%)", fontBig: UIFont.systemFont(ofSize: 20), fontSmall: UIFont.systemFont(ofSize: 12), colorBig: UIColor.blue, colorSmall: UIColor.red)
        
        let titleLabel = UILabel()
        titleLabel.frame = CGRect(x:0,y:100,width:UIScreen.main.bounds.size.width,height:100)
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.attributedText = string
        view.addSubview(titleLabel)
        
        
    }

    func attributedString(stringBig:String,stringSmall:String,fontBig:UIFont,fontSmall:UIFont,colorBig:UIColor,colorSmall:UIColor) -> NSMutableAttributedString {
        let allString = stringBig+stringSmall
        let attributedString = NSMutableAttributedString.init(string: allString)
        attributedString.addAttribute(NSAttributedStringKey.foregroundColor, value:colorBig, range: NSMakeRange(0,stringBig.count))
        attributedString.addAttribute(NSAttributedStringKey.font, value: fontBig, range: NSMakeRange(0,stringBig.count))
        attributedString.addAttribute(NSAttributedStringKey.foregroundColor, value:colorSmall, range: NSMakeRange(stringBig.count,stringSmall.count))
        attributedString.addAttribute(NSAttributedStringKey.font, value: fontSmall, range: NSMakeRange(stringBig.count,stringSmall.count))
        return attributedString
    }

}

