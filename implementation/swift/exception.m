MyException.client()
MyException.sharedClient?.setupExceptionHandler()

MyException.sharedClient?.captureMessage(message: "Caught Exception")