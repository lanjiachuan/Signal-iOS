//
//  Copyright (c) 2017 Open Whisper Systems. All rights reserved.
//

import Foundation

@objc class OWSFlatButton: UIButton {
    let TAG = "[OWSFlatButton]"

    let clickBlock : () -> Void

    init(clickBlock: @escaping () -> Void,
         text: String, font: UIFont,
         textColor: UIColor,
         upColor: UIColor,
        downColor: UIColor) {
        AssertIsOnMainThread()

        self.clickBlock = clickBlock

        super.init(frame:CGRect.zero)

        setBackgroundImage(UIImage(color:upColor), for: .normal)
        setTitle(text, for: .normal)
        setTitleColor(textColor, for: .normal)
        titleLabel!.font = font
//        createViews()
//        private func createButton(title: String, color: UIColor, action: Selector) -> UIButton {
//            let buttonFont = UIFont.ows_mediumFont(withSize:ScaleFromIPhone5To7Plus(18, 22))
//            let buttonCornerRadius = ScaleFromIPhone5To7Plus(4, 5)
//            let buttonWidth = ScaleFromIPhone5To7Plus(110, 140)
//            let buttonHeight = ScaleFromIPhone5To7Plus(35, 45)
//            
//            let button = UIButton()
//            button.setTitle(title, for:.normal)
//            button.setTitleColor(UIColor.white, for:.normal)
//            button.titleLabel!.font = buttonFont
//            button.backgroundColor = color
//            button.layer.cornerRadius = buttonCornerRadius
            clipsToBounds = true
        addTarget(self, action:#selector(buttonPressed), for:.touchUpInside)
//            button.autoSetDimension(.width, toSize:buttonWidth)
//            button.autoSetDimension(.height, toSize:buttonHeight)
//            return button
//        }
    }

    @available(*, unavailable, message:"use other constructor instead.")
    required init?(coder aDecoder: NSCoder) {
        self.clickBlock = {}
        super.init(coder: aDecoder)
        owsFail("\(self.TAG) invalid constructor")
    }

    func buttonPressed() {
        clickBlock()
    }

//    private createViews(text : String, font : UIFont, textColor : UIColor) {
//        let label = UILabel()
//        self.addSubview(label)
//    
//    
//    }

//    /// Cleanup and present alert for no permissions
//    public class func showNoMicrophonePermissionAlert() {
//        let alertTitle = NSLocalizedString("CALL_AUDIO_PERMISSION_TITLE", comment:"Alert title when calling and permissions for microphone are missing")
//        let alertMessage = NSLocalizedString("CALL_AUDIO_PERMISSION_MESSAGE", comment:"Alert message when calling and permissions for microphone are missing")
//        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
//        let dismissAction = UIAlertAction(title: CommonStrings.dismissButton, style: .cancel)
//        let settingsString = NSLocalizedString("OPEN_SETTINGS_BUTTON", comment: "Button text which opens the settings app")
//        let settingsAction = UIAlertAction(title: settingsString, style: .default) { _ in
//            UIApplication.shared.openSystemSettings()
//        }
//        alertController.addAction(dismissAction)
//        alertController.addAction(settingsAction)
//        UIApplication.shared.frontmostViewController?.present(alertController, animated: true, completion: nil)
//    }
//
//    public class func showAlert(withTitle title: String) {
//        self.showAlert(withTitle: title, message: nil, buttonTitle: nil)
//    }
//
//    public class func showAlert(withTitle title: String, message: String) {
//        self.showAlert(withTitle: title, message: message, buttonTitle: nil)
//    }
//
//    public class func showAlert(withTitle title: String, message: String? = nil, buttonTitle: String? = nil) {
//        assert(title.characters.count > 0)
//
//        let actionTitle = (buttonTitle != nil ? buttonTitle : NSLocalizedString("OK", comment: ""))
//
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: actionTitle, style: .default, handler: nil))
//        UIApplication.shared.frontmostViewController?.present(alert, animated: true, completion: nil)
//    }
//
//    public class func cancelAction() -> UIAlertAction {
//        let action = UIAlertAction(title: CommonStrings.cancelButton, style: .cancel) { _ in
//            Logger.debug("Cancel item")
//            // Do nothing.
//        }
//        return action
//    }

}
