import UIKit

protocol UserMessagesView: AnyObject {
    func showAlert(withTitle title: String?, message: String?)
    func showErrorAlert(withMessage message: String?)
    func showAttentionAlert(withMessage message: String?)
    func showConfirmSettings(withTitle title: String, message: String)
}

extension UserMessagesView where Self: UIViewController {
    func showAlert(withTitle title: String?, message: String?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.apply(.primary)
        let okAction = UIAlertAction(title: R.string.localizable.baseOk(), style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }

    func showErrorAlert(withMessage message: String?) {
        showAlert(withTitle: R.string.localizable.baseError(), message: message)
    }

    func showAttentionAlert(withMessage message: String?) {
        showAlert(withTitle: R.string.localizable.baseAttention(), message: message)
    }

    func showConfirmSettings(withTitle title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.apply(.primary)
        let okAction = UIAlertAction(title: R.string.localizable.baseOk(), style: .default, handler: nil)
        let settingsAction = UIAlertAction(title: R.string.localizable.baseSetting(), style: .cancel) { _ in
            if let settingUrl = URL(string: UIApplication.openSettingsURLString) {
                UIApplication.shared.open(settingUrl)
            }
        }
        alertController.addAction(okAction)
        alertController.addAction(settingsAction)
        present(alertController, animated: true)
    }
}
