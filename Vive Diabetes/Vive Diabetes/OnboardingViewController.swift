//
//  OnboardingViewController.swift
//  Vive Diabetes
//
//  Created by Admin on 19/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class OnboardingViewController: UIPageViewController, UIPageViewControllerDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        setViewControllers([getStepZero()], direction: .forward, animated: false, completion: nil)
        dataSource = self
    }

    func getStepZero() -> StepZeroViewController {
        return storyboard!.instantiateViewController(withIdentifier: "StepZero") as! StepZeroViewController
    }
    
    func getStepOne() -> StepOneViewController {
        return storyboard!.instantiateViewController(withIdentifier: "StepOne") as! StepOneViewController
    }
    
    func getStepTwo() -> StepTwoViewController {
        return storyboard!.instantiateViewController(withIdentifier: "StepTwo") as! StepTwoViewController
    }
    
    func getStepThree() -> StepThreeViewController {
        return storyboard!.instantiateViewController(withIdentifier: "StepThree") as! StepThreeViewController
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if viewController.isKind(of: StepThreeViewController.self){
            return getStepTwo()
        } else if viewController.isKind(of: StepTwoViewController.self){
            return getStepOne()
        } else if viewController.isKind(of: StepOneViewController.self){
            return getStepZero()
        } else {
            return nil
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if viewController.isKind(of: StepZeroViewController.self){
            return getStepOne()
        } else if viewController.isKind(of: StepOneViewController.self){
            return getStepTwo()
        } else if viewController.isKind(of: StepTwoViewController.self){
            return getStepThree()
        } else {
            return nil
        }
    }
    
}
