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

        
        let button1 = makeButtonToAddView("AC", x:47.5, y:198);
        let button2 = makeButtonToAddView("+/-", x:142.5, y:198);
        let button3 = makeButtonToAddView("%", x:237.5, y:198);
        let button4 = makeButtonToAddView("÷", x:332.5, y:198);
        let button5 = makeButtonToAddView("7", x:47.5, y:293);
        let button6 = makeButtonToAddView("8", x:142.5, y:293);
        let button7 = makeButtonToAddView("9", x:237.5, y:293);
        let button8 = makeButtonToAddView("×", x:332.5, y:293);
        let button9 = makeButtonToAddView("4", x:47.5, y:388);
        let button10 = makeButtonToAddView("5", x:142.5, y:388);
        let button11 = makeButtonToAddView("6", x:237.5, y:388);
        let button12 = makeButtonToAddView("-", x:332.5, y:388);
        let button13 = makeButtonToAddView("1", x:47.5, y:483);
        let button14 = makeButtonToAddView("2", x:142.5, y:483);
        let button15 = makeButtonToAddView("3", x:237.5, y:483);
        let button16 = makeButtonToAddView("+", x:332.5, y:483);
        let button17 = makeButtonToAddView("0", x:47.5, y:578);
        let button18 = makeButtonToAddView(".", x:237.5, y:578);
        let button19 = makeButtonToAddView("=", x:332.5, y:578);

        
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
        
        self.view.backgroundColor = UIColor.blackColor()

        
        //背景色 変更
        button1.backgroundColor = UIColor(red: 205/255, green: 205/255, blue: 205/255, alpha: 1.0)
        button2.backgroundColor = UIColor(red: 205/255, green: 205/255, blue: 205/255, alpha: 1.0)
        button3.backgroundColor = UIColor(red: 205/255, green: 205/255, blue: 205/255, alpha: 1.0)
        button4.backgroundColor = UIColor(red: 235/255, green: 127/255, blue: 42/255, alpha: 1.0)
        button8.backgroundColor = UIColor(red: 235/255, green: 127/255, blue: 42/255, alpha: 1.0)
        button12.backgroundColor = UIColor(red: 235/255, green: 127/255, blue: 42/255, alpha: 1.0)
        button16.backgroundColor = UIColor(red: 235/255, green: 127/255, blue: 42/255, alpha: 1.0)
        button19.backgroundColor = UIColor(red: 235/255, green: 127/255, blue: 42/255, alpha: 1.0)
        
        //テキストの色 変更
        button4.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button8.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button12.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button16.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button19.setTitleColor(UIColor.whiteColor(), forState: .Normal)

        //サイズ変更
        button17.frame = CGRectMake(0, 0, 188, 94)
        
        //配置場所
        button17.layer.position = CGPoint(x:95, y:578)

        
        // Labelを作成.
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,375,197))
        
        // 背景をオレンジ色にする.
        myLabel.backgroundColor = UIColor(red: 124/255, green: 120/255, blue: 120/255, alpha: 1.0)
        
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
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        
        //タップした状態のテキスト
        button.setTitle(title, forState: .Highlighted)
        
        //タップした状態の色
        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        
        //サイズ
        button.frame = CGRectMake(0, 0, 94, 94)
        
        //配置場所
        button.layer.position = CGPoint(x:x, y:y)
        
        //背景色
        button.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1.0)
        
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

