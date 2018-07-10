//
//  LoginUseCaseOutputComposerTests.swift
//  SimpleAppViperTests
//
//  Created by mitrais on 10/07/18.
//  Copyright © 2018 mitrais. All rights reserved.
//

import XCTest
@testable import SimpleCleanWithViper

class LoginUseCaseOutputComposerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_composingZeroOutputs_doesNotCrash(){
        let sut = LoginUseCaseOuputComposer([])
        sut.loginSucceded()
        sut.loginFailed()
    }
    
    func test_composingOneOutput_delegatesSuccededMessage(){
        let output = LoginUserCaseOutputSpy()
        let sut = LoginUseCaseOuputComposer([output])
        sut.loginSucceded()
        
        XCTAssertEqual(output.loginSucceedCount, 1)
        XCTAssertEqual(output.loginFailedCount, 0)
    }
    
    func test_composingOneOutput_delegatesFailedMessage(){
        let output = LoginUserCaseOutputSpy()
        let sut = LoginUseCaseOuputComposer([output])
        sut.loginFailed()
        
        XCTAssertEqual(output.loginSucceedCount, 0)
        XCTAssertEqual(output.loginFailedCount, 1)
    }
    
    func test_composingMultipleOutput_delegatesSuccededMessage(){
        let output = LoginUserCaseOutputSpy()
        let output2 = LoginUserCaseOutputSpy()
        let sut = LoginUseCaseOuputComposer([output,output2])
        sut.loginSucceded()
        
        XCTAssertEqual(output.loginSucceedCount, 1)
        XCTAssertEqual(output.loginFailedCount, 0)
        
        XCTAssertEqual(output2.loginSucceedCount, 1)
        XCTAssertEqual(output2.loginFailedCount, 0)
    }
    
    func test_composingMultipleOutput_delegatesFailedMessage(){
        let output = LoginUserCaseOutputSpy()
        let output2 = LoginUserCaseOutputSpy()
        let sut = LoginUseCaseOuputComposer([output,output2])
        sut.loginFailed()
        
        XCTAssertEqual(output.loginSucceedCount, 0)
        XCTAssertEqual(output.loginFailedCount, 1)
        XCTAssertEqual(output2.loginSucceedCount, 0)
        XCTAssertEqual(output2.loginFailedCount, 1)
    }
    
    // MARK helper
    private class LoginUserCaseOutputSpy: loginUseCaseOutput{
        var loginSucceedCount = 0
        var loginFailedCount = 0
        
        func loginSucceded() {
            loginSucceedCount += 1
        }
        
        func loginFailed() {
            loginFailedCount += 1
        }
        
      
        
        
    }
    
}
