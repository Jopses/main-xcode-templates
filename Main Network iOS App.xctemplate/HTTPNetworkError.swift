import Foundation

struct HTTPNetworkError: Error {
    let statusCode: Int
}

extension HTTPNetworkError: LocalizedError {
    var errorDescription: String? {
        return localizedDescription
    }

    var localizedDescription: String {
        switch statusCode {
        case 401:
            return R.string.localizable.baseHttpErrors401()
        case 403:
            return R.string.localizable.baseHttpErrors403()
        case 404:
            return R.string.localizable.baseHttpErrors404()
        case 500, 502:
            return R.string.localizable.baseHttpErrors500()
        default:
            return R.string.localizable.baseHttpErrorsOther()
        }
    }
}
