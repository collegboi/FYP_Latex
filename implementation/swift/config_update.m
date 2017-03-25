RCConfigManager.getConfigThemeVersion(theme: theme) { ( complete, message) in
    DispatchQueue.main.async {
        if complete {
            RCConfigManager.updateConfigFileNames(fileType: .config)
            self.updateViews()
            self.showMessage(title: "Theme", message: theme + " successfully downloaded")
        }
    }
}
