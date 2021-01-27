import KeychainSwift

class Keychain: KeychainSwift {
    override init() {
        let prefix = Bundle.main.bundleIdentifier ?? "ru.main" + "_keychain_"
        super.init(keyPrefix: prefix)
    }
}
