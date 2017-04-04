func openViewControllerWithLoader(_ loader: DataLoader, sender:  NSButton) {
    loader.oauth2.forgetTokens()
    loader.oauth2.authConfig.authorizeContext = view.window
    NotificationCenter.default.removeObserver(self, name: OAuth2CallbackNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(self.handleRedirect(_:)), name: OAuth2CallbackNotification, object: nil)
    loader.requestUserdata() { dict, error in
        if let error = error {
            //inform user of error
        }
        else {
            //stores data locally from dict
            self.loadMainView(sender: sender)
        }
    }
}
