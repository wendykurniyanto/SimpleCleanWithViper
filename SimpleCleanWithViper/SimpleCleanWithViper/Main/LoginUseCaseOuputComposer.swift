//
//  LoginUseCaseComposer.swift
//  SimpleAppViper
//
//  Created by mitrais on 10/07/18.
//  Copyright © 2018 mitrais. All rights reserved.
//

import Foundation

final class LoginUseCaseOuputComposer:loginUseCaseOutput{
    let outputs: [loginUseCaseOutput]
    init (_ outputs:[loginUseCaseOutput]){
        self.outputs = outputs
    }
    func loginSucceded() {
        //send login event
        outputs.forEach{$0.loginSucceded()}
    }
    
    func loginFailed() {
        // send error
        outputs.forEach{$0.loginFailed()}
    }
    
    
}
