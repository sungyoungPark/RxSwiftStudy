//
//  Scene.swift
//  rxSwiftStudy1
//
//  Created by 박성영 on 2021/01/27.
//
import UIKit

enum Scene {
    case list(FirstViewModel)

}


extension Scene {
    func instantiate(fro storyboard: String = "Main") -> UIViewController{
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        
        switch  self {
        case .list(let viewModel):
            guard let nav = storyboard.instantiateViewController(withIdentifier: "MainNav") as? UINavigationController
            else{
                fatalError()
            }
            
            guard var firstVC = nav.viewControllers.first as?
                    FirstViewController
            else {
                fatalError()
            }
            
            firstVC.bind(viewModel: viewModel)
            return nav
       
        }
    }
}
