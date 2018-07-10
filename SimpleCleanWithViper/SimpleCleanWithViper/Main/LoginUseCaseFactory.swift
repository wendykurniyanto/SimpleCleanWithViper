//
//  LoginUseCaseFactory.swift
//  SimpleAppViper
//
//  Created by mitrais on 10/07/18.
//  Copyright © 2018 mitrais. All rights reserved.
//

import Foundation

final class LoginUseCaseFactory{
    func makeUseCase() -> LoginUseCase{
        return LoginUseCase(output: LoginUseCaseOuputComposer([
                LoginPresenter(),
                CrashlitycsLoginTracker(),
                FirebaseAnalyticsLoginTracker()
            ]))
    }
}
