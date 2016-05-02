//
//  ViewController.swift
//  samplePickerView
//
//  Created by AI Matsubara on 2016/04/28.
//  Copyright © 2016年 AI Matsubara. All rights reserved.
//

import UIKit

//プロトコルを指定
class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    
    //ピッカービューに名前をセット
    @IBOutlet weak var myPicker: UIPickerView!
    
    
    //セットするデータ（選択肢）を配列で用意する
    var teaList = ["ダージリン", "アールグレイ", "アッサム", "オレンジペコ"]
    //override func viewDidLoad()の上に書く理由は、、、
    //メソッドがたくさんある場合、共通して使いたい場合
    //使える範囲が広がる
    //複数のメソッドで使える変数をメンバ変数（同じクラス内の複数メソッドで使用可能）
    //１つのメソッドの中で宣言するのではなくて、外側で変数宣言してあげる

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //プロトコルを使う準備
        myPicker.dataSource = self;
        myPicker.delegate = self;
        //selfはphpでゆうthisのこと
        //ここまで書くと上にメソッドがないとエラーで怒られるので記述
        
    }
    
    
    
    //ピッカービューの列数を返すメソッド
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //ピッカービューの行数を返すメソッド
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teaList.count //tesListの配列数をカウントして指定
    }
    
    //ピッカービューに表示する文字のセット
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teaList[row]
        //row は行番号の数字で、０から始まる
        //teaListの配列と行番号をマッチさせてうまいこと表示させている
    }
    
    //ピッカービューで選択されたときに行う処理
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("選択されたのは\(row)行目で\(teaList[row])です")
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

