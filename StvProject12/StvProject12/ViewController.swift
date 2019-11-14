//
//  ViewController.swift
//  StvProject12
//
//  Created by kazua on 2018/03/20.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var myTextField: UITextField!
    @IBOutlet private weak var inputText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputText.text = " "
        myTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        inputText.text = myTextField.text
        myTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        inputText.text = textField.text
        return true
    }
    
    func showAlert() {
        
        let alert: UIAlertController =
            UIAlertController(title: "Alert!",
                              message: "30文字までやで",
                              preferredStyle: .alert)
        
        let defaultAction: UIAlertAction =
            UIAlertAction(title: "OK",
                          style: .default) { (_: UIAlertAction) -> Void in }
        
        alert.addAction(defaultAction)
        
        self.present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        guard let unwrapString = self.myTextField.text as NSString? else {
            return false
        }
        
        let newString = unwrapString.replacingCharacters(in: range, with: string)
        
        if newString.count > 30 {
            self.showAlert()
        }
        
        return true
    }
}
