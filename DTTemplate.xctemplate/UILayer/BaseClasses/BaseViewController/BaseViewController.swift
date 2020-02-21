//___FILEHEADER___

import UIKit

enum LoadingResult {
    case success
    case none
    case error
    case warning
    case info
}

class BaseViewController: UIViewController {
    
    public func showBaseOkAlertController(title: String?, message: String?, callback: (() -> Void)? = nil) {
        self.showBaseAlertController(style: .alert) {
            $0.title = title
            $0.message = message
            let action = UIAlertAction(title: "OK", style: .cancel, handler: { (_) in
                if callback != nil {
                    callback!()
                }
            })
            $0.addAction(action)
        }
    }
    
    func showBaseAlertController(style: UIAlertController.Style, setupBlock: (UIAlertController) -> Void) {

        let alertController: UIAlertController = UIAlertController(title: "Ошибка", message: nil, preferredStyle: style)
        setupBlock(alertController)

        if alertController.actions.count < 1 {
            fatalError("No actions provided in alert controller")
        }

        self.present(alertController, animated: true, completion: nil)
    }
    

    func showBaseLoading(with message: String?, completion: (() -> Void)? = nil) {
        break
    }
    
    func hideBaseLoading(with result: LoadingResult = .none, message: String? = nil) {
        switch result {
        case .success:
            break
        case .none:
            break
        case .error:
            break
        case .warning:
            break
        case .info:
            break
        }
    }
}
