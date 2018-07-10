//
//  loginUseCase.swift
//  SimpleAppViper
//
//  Created by mitrais on 10/07/18.
//  Copyright © 2018 mitrais. All rights reserved.
//

import Foundation

protocol loginUseCaseOutput {
    func loginSucceded()
    func loginFailed()
}

final class LoginUseCase{
    let output:loginUseCaseOutput
    
    init(output:loginUseCaseOutput) {
        self.output = output
    }
    
    func login (name:String, password:String){
       // if succed outputs.loginSucceded()
       //else outputs.loginFailed()
    }
}
