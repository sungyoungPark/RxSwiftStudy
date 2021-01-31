//
//  WebNewsViewModel.swift
//  rxSwiftStudy1
//
//  Created by 박성영 on 2021/01/30.
//

import Foundation
import RxCocoa
import RxSwift
import Action

class WebNewsViewModel : CommonViewModel{
    
    lazy var popAction = CocoaAction { [unowned self] in
        return self.sceneCoordinator.close(animated: true).asObservable().map{ _ in }
    }
    
}
