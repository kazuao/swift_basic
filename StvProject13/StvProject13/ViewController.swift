//
//  ViewController.swift
//  StvProject13
//
//  Created by kazua on 2018/03/20.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet private weak var pickerLabel: UILabel!
    @IBOutlet private weak var pickerView: UIPickerView!
    @IBOutlet private weak var toolBar: UIToolbar!
    
    var picNumber = ["1", "2", "3", "4", "5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        // pickerViewの初期値
        pickerView.selectedRow(inComponent: 0)
        
        // 最初にpickerViewを消しておく
        disablePicker()
        
        // Labelをタップした際のイベント
        let tap: UITapGestureRecognizer =
            UITapGestureRecognizer(target: self, action: #selector(self.tapped))
        pickerLabel.isUserInteractionEnabled = true
        pickerLabel.addGestureRecognizer(tap)
    }
    
    // Labelをタップした際の処理
    @objc func tapped(sender: UITapGestureRecognizer) {
        
        if pickerView.isHidden == false {
            disablePicker()
        } else {
            enablePicker()
        }
    }
    
    // 背景をタップした際にpickerViewを消す
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        disablePicker()
    }
    // doneボタンをタップした際にpickerViewを消す
    @IBAction func doneBtn(_ sender: Any) {
        disablePicker()
    }
    
    // pickerを表示させる
    func enablePicker() {
        pickerView.isHidden = false
        toolBar.isHidden = false
    }
    // pickerを消す
    func disablePicker() {
        pickerView.isHidden = true
        toolBar.isHidden = true
    }
    
    /**
     pickerViewのdelegate & datasourceのメソッド
    */
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return self.picNumber.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return picNumber[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerLabel.text = picNumber[row]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}
