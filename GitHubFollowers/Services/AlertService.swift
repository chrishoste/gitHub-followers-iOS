//
//  AlertService.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 01.01.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//

import Foundation
import UIKit

class AlertService {

    func show(target: UIViewController, alert: Alert) {
        let alertViewController = CustomAlertViewController()
        alertViewController.setup(title: alert.title, message: alert.message, buttonTitle: alert.buttonText, buttonType: alert.buttonType)
        alertViewController.modalPresentationStyle = .overFullScreen
        target.present(alertViewController, animated: false, completion: nil)
    }
}
