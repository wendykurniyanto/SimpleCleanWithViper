//
//  CrashlyticsLoginTracker.swift
//  SimpleAppViper
//
//  Created by mitrais on 10/07/18.
//  Copyright © 2018 mitrais. All rights reserved.
//

import Foundation

final class CrashlitycsLoginTracker:loginUseCaseOutput{
    func loginSucceded() {
        // send login event to crashlytics
    }
    
    func loginFailed() {
        //send error to crashlytics
    }
    
    
}
