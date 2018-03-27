//
//  PagViewController.swift
//  StvProject21
//
//  Created by kazua on 2018/03/27.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var pageViewControllers: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        
        // firstView
        let first: UIStoryboard = UIStoryboard(name: "First", bundle: nil)
        guard let firstSB: UIViewController = first.instantiateInitialViewController() else {
            return
        }
        // secondView
        let second: UIStoryboard = UIStoryboard(name: "Second", bundle: nil)
        guard let secondSB: UIViewController = second.instantiateInitialViewController() else {
            return
        }
        // thirdView
        let third: UIStoryboard = UIStoryboard(name: "Third", bundle: nil)
        guard let thirdSB: UIViewController = third.instantiateInitialViewController() else {
            return
        }
        
        self.pageViewControllers = [firstSB, secondSB, thirdSB]
        setViewControllers([self.pageViewControllers[0]], direction: .forward, animated: false, completion: nil)
    }
    
    // ページを戻すファンクション
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let index = pageViewControllers.index(of: viewController) else {
            fatalError("error!")
        }
        
        if index == 0 {
            return nil
        } else {
            return pageViewControllers[index-1] // swiftlint:disable:this operator_usage_whitespace
        }
    }
    
    // ページを進めるファンクション
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let index = pageViewControllers.index(of: viewController) else {
            fatalError("error!")
        }
        
        if index == pageViewControllers.count-1 { // swiftlint:disable:this operator_usage_whitespace
            return nil
        } else {
            return pageViewControllers[index+1] // swiftlint:disable:this operator_usage_whitespace
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
