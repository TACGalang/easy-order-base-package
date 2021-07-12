//
//  Prompt.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

open class Prompt {
    
    /**
     Simple alert controller with okay button.
     
     - Parameter title: Main summary of the error.
     - Parameter message: Additional info of the error.
     - Parameter viewController: The present controller to be presented by this alert.
     */
    public class func alert(withTitle title:String?, withMessage message:String?, ofThisViewController viewController:UIViewController) {
        
        let okLocal = NSLocalizedString("ok", comment: "")
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction(title: okLocal, style: .default, handler: nil)
        
        alertController.addAction(okayAction)
        viewController.present(alertController, animated: true, completion: nil)
    }
    
    public class func alert(logoutOfThisViewController viewController:UIViewController, withLoginViewController loginViewController:UIViewController) {
        
        let okLocal = NSLocalizedString("ok", comment: "")
        
        let alertController = UIAlertController(title: "An Error Occured", message: "Please re-login the app.", preferredStyle: .alert)
        let okayAction = UIAlertAction(title: okLocal, style: .default) { _ in
            UIApplication.setRootView(loginViewController)
        }
        
        alertController.addAction(okayAction)
        viewController.present(alertController, animated: true)
    }
    
    /**
    Prompt ClientMessage with custom function.
     
     - Parameters:
        - title: Title of the alert.
        - message: Message of the alert.
        - okay: Closures to be pass.
        - controller: Controller to present the alert.
     */
    public static func prompt(withTitle title:String?,
                              withMessage message:String?,
                              withOkayFunction okay:@escaping ()->(),
                              ofThisController controller:UIViewController) {
        
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        let okLocal = NSLocalizedString("ok", comment: "")
        
        let okayAction = UIAlertAction(title: okLocal, style: .default) { _ in
            okay()
        }
        
        alertController.addAction(okayAction)
        controller.present(alertController, animated: true)
    }
}
#endif
