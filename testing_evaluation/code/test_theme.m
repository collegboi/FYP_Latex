func getDiffLanguage( theme: String ) {
    RCConfigManager.getConfigThemeVersion(theme: theme) { ( complete, message) in
        DispatchQueue.main.async {
            if complete {
                print(theme)
                self.updateViews()
                self.showMessage(title: "Theme", message: theme + " successfully downloaded")
            }
        }
    }
}
