//
//  ViewController.swift
//  Calculator
//
//  Created by 中井勝也 on 2015/05/02.
//  Copyright (c) 2015年 中井勝也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        let button1 = makeButtonToAddView("AC", x:47.5, y:193);
        let button2 = makeButtonToAddView("+/-", x:142.5, y:193);
        let button3 = makeButtonToAddView("%", x:237.5, y:193);
        let button4 = makeButtonToAddView("➗", x:332.5, y:193);
        let button5 = makeButtonToAddView("7", x:47.5, y:288);
        let button6 = makeButtonToAddView("8", x:142.5, y:288);
        let button7 = makeButtonToAddView("9", x:237.5, y:288);
        let button8 = makeButtonToAddView("✖️", x:332.5, y:288);
        let button9 = makeButtonToAddView("4", x:47.5, y:383);
        let button10 = makeButtonToAddView("5", x:142.5, y:383);
        let button11 = makeButtonToAddView("6", x:237.5, y:383);
        let button12 = makeButtonToAddView("-", x:332.5, y:383);
        let button13 = makeButtonToAddView("1", x:47.5, y:478);
        let button14 = makeButtonToAddView("2", x:142.5, y:478);
        let button15 = makeButtonToAddView("3", x:237.5, y:478);
        let button16 = makeButtonToAddView("+", x:332.5, y:478);
        let button17 = makeButtonToAddView("0", x:47.5, y:573);
        let button18 = makeButtonToAddView(".", x:237.5, y:573);
        let button19 = makeButtonToAddView("=", x:332.5, y:573);

        
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        self.view.addSubview(button5)
        self.view.addSubview(button6)
        self.view.addSubview(button7)
        self.view.addSubview(button8)
        self.view.addSubview(button9)
        self.view.addSubview(button10)
        self.view.addSubview(button11)
        self.view.addSubview(button12)
        self.view.addSubview(button13)
        self.view.addSubview(button14)
        self.view.addSubview(button15)
        self.view.addSubview(button16)
        self.view.addSubview(button17)
        self.view.addSubview(button18)
        self.view.addSubview(button19)
        

        // Labelを作成.
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,375,191))
        
        // 背景をオレンジ色にする.
        myLabel.backgroundColor = UIColor.blueColor()
        
        // 枠を丸くする.
        myLabel.layer.masksToBounds = false
        
        // コーナーの半径.
        myLabel.layer.cornerRadius = 20.0
        
        // Labelに文字を代入.
        myLabel.text = "計算結果"
        
        // 文字の色を白にする.
        myLabel.textColor = UIColor.whiteColor()
        
        // 文字の影の色をグレーにする.
        myLabel.shadowColor = UIColor.grayColor()
        
        // Textを中央寄せにする.
        myLabel.textAlignment = NSTextAlignment.Center
        
        // 配置する座標を設定する.
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 50)
        
        // ViewにLabelを追加.
        self.view.addSubview(myLabel)
        
        
    }
    
    
    func tapped(button :UIButton){
        NSLog("tapped")
    }
    
    func makeButtonToAddView(title:String, x:CGFloat, y:CGFloat) -> UIButton {
        
        
        let button = UIButton()
        
        //表示されるテキスト
        button.setTitle(title, forState: .Normal)
        
        //テキストの色
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        //タップした状態のテキスト
        button.setTitle("z", forState: .Highlighted)
        
        //タップした状態の色
        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        
        //サイズ
        button.frame = CGRectMake(0, 0, 94, 94)
        
        //配置場所
        button.layer.position = CGPoint(x:x, y:y)
        
        //背景色
        button.backgroundColor = UIColor(red: 0.7, green: 0.2, blue: 0.2, alpha: 0.2)
        
        //角丸
        button.layer.cornerRadius = 0
        
        //ボーダー幅
        button.layer.borderWidth = 1
        
        //ボタンをタップした時に実行するメソッドを指定
        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        
        //viewにボタンを追加する
        return button
        
        
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

