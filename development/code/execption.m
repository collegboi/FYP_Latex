public func setupExceptionHandler() {
    checkAndSendErrors()
    
    func exceptionHandler(exception : NSException) {
        
        #if DEBUG
            NSLog("Name:" + exception.name.rawValue)
            if exception.reason == nil {
                NSLog("Reason: nil")
            } else {
                NSLog("Reason:" + exception.reason!)
            }
        #endif
        
        UserDefaults.standard.set(exception.name.rawValue, forKey: "name")  //Integer
        UserDefaults.standard.set(exception.reason ?? "Nil", forKey: "reason") //setObject
        UserDefaults.standard.set(exception.userInfo ?? "Nil", forKey: "userInfo" )
        UserDefaults.standard.set(exception.callStackReturnAddresses , forKey: "stackReturnAddress")
        UserDefaults.standard.set(exception.callStackSymbols , forKey: "stackSymbols")
    }
    NSSetUncaughtExceptionHandler(exceptionHandler)
}
