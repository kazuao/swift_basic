//
//  ViewController.swift
//  StvProject14
//
//  Created by kazua on 2018/03/20.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var toolbar: UIToolbar!
    @IBOutlet private weak var datePicker: UIDatePicker!
    
    // あらかじめインスタンス化
    let date: Date = Date()
    let format = DateFormatter()
    var stringDate: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // 現在の日付を指定フォーマットに変換する
        format.dateFormat = "yyyy月MM月dd日"
        stringDate = format.string(from: date)
        
        // 初期値に今日の日付を代入
        self.datePicker.setDate(date, animated: true)
        
        // あらかじめdatePickerを消しておく
        disablePicker()
        
        // labelタップ時のジェスチャー
        let tap: UITapGestureRecognizer =
            UITapGestureRecognizer(target: self, action: #selector(self.tapped))
        dateLabel.isUserInteractionEnabled = true
        dateLabel.addGestureRecognizer(tap)
    }
    
    // labelタップ時の処理
    @objc func tapped(sender: UITapGestureRecognizer) {
        if datePicker.isHidden == false {
            disablePicker()
        } else {
            enablePicker()
            fetchDefaultPicker()
        }
    }
    
    // labelをタップした時に初期値を挿入する
    func fetchDefaultPicker() {

        if self.dateLabel.text == "Date Label" {
            self.dateLabel.text = stringDate
        }
    }
    
    // datePickerの変更をlabelに反映する
    @IBAction func changedLabel(_ sender: Any) {
        self.dateLabel.text = format.string(from: self.datePicker.date)
    }
    
    // 背景タップ時にdatePickerを消す
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        disablePicker()
    }
    
    @IBAction func doneBtn(_ sender: Any) {
        disablePicker()
    }
    func enablePicker() {
        self.toolbar.isHidden = false
        self.datePicker.isHidden = false
    }
    func disablePicker() {
        self.toolbar.isHidden = true
        self.datePicker.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}
