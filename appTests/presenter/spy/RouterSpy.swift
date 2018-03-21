//
//  RouterSpy.swift
//  appTests
//
//  Created by Guilherme Cherubini on 21/03/18.
//  Copyright © 2018 Guilherme Cherubini. All rights reserved.
//

import Foundation
import UIKit
@testable import app

class RouterSpy: Router {
    var pushedToView: UIViewController?
    var hasPushedAnimated: Bool?
    
    override func pushViewController(_ to: UIViewController, animated: Bool = true) {
        pushedToView = to
        hasPushedAnimated = animated
    }
}
