//
//  FirstViewPresenter.swift
//  appTests
//
//  Created by Guilherme Cherubini on 21/03/18.
//  Copyright © 2018 Guilherme Cherubini. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import app

class FirstViewPresenterTest: QuickSpec {
    
    override func spec() {
        
        let rootViewController = UIViewController()
        var routerSpy: RouterSpy!
        var viewSpy: ViewSpy!
        var presenter: FirstViewPresenter!
        
        describe("Presenter") {
        
            beforeEach {
                routerSpy = RouterSpy(rootViewController)
                viewSpy = ViewSpy()
                presenter = FirstViewPresenter(router: routerSpy, view: viewSpy)
            }
            
            describe("Load") {
                it("Btn text correctly") {
                    presenter.load()
                    expect(viewSpy.btnText) == "Go to second screen"
                }
            }
            
            describe("On btn click") {
                it("Should redirect corretly") {
                    presenter.onPrimaryBtnClick()
                    expect(routerSpy.pushedToView is SecondViewController) == true
                    expect(routerSpy.hasPushedAnimated) == true
                }
            }
        }
    }
}

class ViewSpy: FirstView {
    var btnText: String?

    func setBtnText(_ text: String) {
        btnText = text
    }
}

