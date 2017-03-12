public protocol LabelLoad {}
public extension LabelLoad where Self: UILabel {
    
    public func setupLabelView( className: UIViewController, name: String = "") {
       self.setup(className: String(describing: type(of: className)), objectName: name)
    }
    public func setupLabelView( className: UIView, name: String = "") {
        self.setup(className: String(describing: type(of: className)), objectName: name)
    }
    private func setup( className: String, objectName : String ) {
        
        let dict = RCConfigManager.getObjectProperties(className: className, objectName: objectName)
        for (key, value) in dict {
            switch key {
            case "text" where dict.tryConvert(forKey: key) != "":
                self.text = RCConfigManager.getTranslation(name: viewName)
                break
            case "backgroundColor" where dict.tryConvert(forKey: key) != "":
                self.backgroundColor = RCConfigManager.getColor(name: (value as! String), defaultColor: .white)
                break
