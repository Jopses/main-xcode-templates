import Foundation

class ErrorHandler {
    weak var messagesView: UserMessagesView?

    func handle(error: Error) {
        Logger.debugLog("Error: \(error)")
        let message = error.localizedDescription
        messagesView?.showErrorAlert(withMessage: message)
    }

    func handleAttention(error: Error) {
        Logger.debugLog("Attention: \(error)")
        let message = error.localizedDescription
        messagesView?.showAttentionAlert(withMessage: message)
    }

    func handleMessage(title: String, message: String) {
        messagesView?.showAlert(withTitle: title, message: message)
    }
}
