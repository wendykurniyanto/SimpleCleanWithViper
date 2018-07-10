//
//  LoginUseCaseFactoryTests.swift
//  SimpleAppViperTests
//
//  Created by mitrais on 10/07/18.
//  Copyright © 2018 mitrais. All rights reserved.
//

import XCTest
@testable import SimpleCleanWithViper

class LoginUseCaseFactoryTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_createdUseCase_hasComposedOuputs() {
        let sut = LoginUseCaseFactory()
        let useCase = sut.makeUseCase()
        let composer = useCase.output as? LoginUseCaseOuputComposer
        
        XCTAssertNotNil(composer)
        XCTAssertEqual(composer?.outputs.count, 3)
        //XCTAssertEqual(composer?.count(ofType:LoginPresenter.self), 1)
        //XCTAssertEqual(composer?.count(ofType:CrashlitycsLoginTracker.self), 1)
        //XCTAssertEqual(composer?.count(ofType:FirebaseAnalyticsLoginTracker.self), 1)
    }
}

private extension LoginUseCaseOuputComposer{
    func count<T>(ofType: T) -> Int {
        return outputs.filter{$0 is T}.count
    }
    
}
