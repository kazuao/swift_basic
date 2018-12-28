//
//  ViewController.swift
//  SampleOptional
//
//  Created by kazua on 2018/12/25.
//  Copyright © 2018 kazua. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - Properties
    var optionalString: String? = "optionalなstatus"
    var optionalNilString: String?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        optionalNormalPrint()
        optionalBindingIfSample()
        optionalBindingGuardSample()
        optionalChainingSample()
        nilCoalescingOperatorSmaple()
    }
    
    // MARK: - function
    func optionalNormalPrint() {
        
        // そのまま出力
        // warningはわざとです。
        print(optionalString)
        
        // ForcedUnwrapをしたやつ
        // swiftlint:disable force_unwrapping
        print(optionalString! + "をForcedUnwrapしました。")
    }
    
    /*
     * OptionalBinding
     */
    // if let を使ったやつforce_unwrapping
    func optionalBindingIfSample() {
        
        if let unwrapOptionalBindingString = optionalString {
            print(unwrapOptionalBindingString + "をOptionalBindingのifでunwrapしました。")
        }
    }
    
    // guard let を使ったやつ
    func optionalBindingGuardSample() {
        
        guard let unwrapOptionalBindingString = optionalString else {
            return
        }
        print(unwrapOptionalBindingString + "をOptionalBindingのguardでunwrapしました。")
    }
    
    /*
     * OptionalChaining
     */
    func optionalChainingSample() {
        
        let unwrapOptionalString = optionalString?.uppercased()
        print(unwrapOptionalString)
        
        let unwrapOptionalNilString = optionalNilString?.uppercased()
        print(unwrapOptionalNilString)
    }
    
    /*
     * Nil Coalescing Operator
     */
    func nilCoalescingOperatorSmaple() {
        
        print(optionalString ?? "nilだった？")
        
        print(optionalNilString ?? "nilだった？？")
    }
}
