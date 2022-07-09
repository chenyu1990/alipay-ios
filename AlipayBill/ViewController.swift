//
//  ViewController.swift
//  AlipayBill
//
//  Created by vancy on 2022/7/9.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 6P 414*736
        let UINavigationTransitionView = UIView()
        UINavigationTransitionView.backgroundColor=UIColor.white
        UINavigationTransitionView.frame=CGRect(x: view.safeAreaInsets.left, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        if true
        {
            let UILayoutContainerView = UIView()
            UILayoutContainerView.backgroundColor=UIColor.cyan
            UILayoutContainerView.frame=CGRect(x: 0, y: 64, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            UINavigationTransitionView.addSubview(UILayoutContainerView)

            if true {
                let UITranstionView = UIView()
                UITranstionView.backgroundColor=UIColor.red
                UITranstionView.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                UILayoutContainerView.addSubview(UITranstionView)

                let UITabBar = UIView()
                UITabBar.backgroundColor=UIColor.blue
                UITabBar.frame=CGRect(x: 0, y: 623, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                UILayoutContainerView.addSubview(UITabBar)
            }
        }
        view.addSubview(UINavigationTransitionView)


        let UIToolbar = UIView()
        UIToolbar.backgroundColor=UIColor.purple
        UIToolbar.frame=CGRect(x: 0, y: UIScreen.main.bounds.height, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        view.addSubview(UIToolbar)

        let bar = APNavigationBar()
        
        bar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        bar.widthAnchor.constraint(equalToConstant: 414).isActive = true
        view.addSubview(bar)
        
        
        view.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        view.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}


class APNavigationBar: UIView {
    init() {
        super.init(frame:CGRect(x: 0, y: 20, width: UIScreen.main.bounds.width, height: 44))
        self.backgroundColor=nil
        let bgAPN = _UIBarBackground_APN()
        let viewAPN = _UINavigationBarContentView_APN()
        viewAPN.heightAnchor.constraint(equalToConstant: 44).isActive = true
        viewAPN.widthAnchor.constraint(equalToConstant: 414).isActive = true
        let bottomLine = UIView_APN()
        self.addSubview(bgAPN)
        self.addSubview(viewAPN)
        self.addSubview(bottomLine)
        return
    }
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented"); }
}
class _UIBarBackground_APN: UIView {
    init() {
        super.init(frame:CGRect(x: 0, y: -20, width: UIScreen.main.bounds.width, height: 64))
        self.backgroundColor=nil
        return
    }
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented"); }
}
class _UINavigationBarContentView_APN: UIView {
    init() {
        super.init(frame:CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44))
        invalidateIntrinsicContentSize()
        self.backgroundColor=nil
        let itemButton = UIButton(frame: CGRect(x:0,y:0,width: 30,height: 44))
        let itemButtonImageView = UIImageView()
        itemButtonImageView.image = UIImage(named: "APN_AUBarButtonItemButton")
        itemButtonImageView.frame = CGRect(x:0,y:12.333,width: 13.333,height: 19.333)
        let itemButtonLabel = UILabel(frame: CGRect(x:0,y:22,width: 0,height: 0))
        itemButton.addSubview(itemButtonImageView)
        itemButton.addSubview(itemButtonLabel)
        let barStackView1=_UIButtonBarStackView_APN(
            barStackFrame: CGRect(x: 20, y: 0, width: 30, height: 44),
            adaptorFrame: CGRect(x: 0, y: 0, width: 30, height: 44),
            btn: itemButton
        )
        self.addSubview(barStackView1)
        let button = UIButton(frame: CGRect(x:0,y:0,width: 22,height: 22))
        let buttonImageView = UIImageView()
        buttonImageView.image = UIImage(named: "APN_AUButton")
        buttonImageView.frame = CGRect(x:0,y:0,width:22,height:22)
        button.addSubview(buttonImageView)
        let barStackView2=_UIButtonBarStackView_APN(
            barStackFrame: CGRect(x: 372, y: 0, width: 22, height: 44),
            adaptorFrame: CGRect(x: 0, y: 11, width: 22, height: 22),
            btn: button
        )
        self.addSubview(barStackView2)

        let searchTitleView = AUSearchTitleView_APN()
        let searchTitleViewAdaptor = _UITAMICAdaptorView_APN(adaptorFrame: CGRect(x:56, y:0, width: 310, height: 44), searchTitleView: searchTitleView)
        self.addSubview(searchTitleViewAdaptor)
        return
    }
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented"); }
}
class UIView_APN: UIView {
    init() {
        super.init(frame:CGRect(x: 0, y: 44, width: UIScreen.main.bounds.width, height: 0.5))
        self.backgroundColor=UIColor(red:0, green:0, blue:0, alpha:0.0)
        return
    }
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented"); }
}

class _UIButtonBarStackView_APN:UIView {
    init(barStackFrame:CGRect,adaptorFrame:CGRect,btn:UIButton) {
        super.init(frame: barStackFrame)
        self.backgroundColor=nil
        let adaptor=_UITAMICAdaptorView_APN(adaptorFrame: adaptorFrame,btn: btn)
        self.addSubview(adaptor)
        return
    }
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented"); }
}
class _UITAMICAdaptorView_APN:UIView {
    init(adaptorFrame:CGRect,btn:UIButton) {
        super.init(frame: adaptorFrame)
        self.backgroundColor=nil
        self.addSubview(btn)
        return
    }
    init(adaptorFrame:CGRect,searchTitleView:UIView) {
        super.init(frame: adaptorFrame)
        self.backgroundColor=nil
        self.addSubview(searchTitleView)
        return
    }
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented"); }
}
class AUSearchTitleView_APN:UIView {
    init() {
        super.init(frame: CGRect(x:0,y:0,width:310,height:44))
        self.backgroundColor=UIColor(red:0, green:0, blue:0, alpha:0.0)
        let view = UIView(frame: CGRect(x: 9, y: 8, width: 289, height: 28))
        view.backgroundColor=UIColor(red:0, green:0, blue:0, alpha:0.05)
        view.layer.cornerRadius=6.0
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 289, height: 28))
        button.backgroundColor=UIColor(red:0, green:0, blue:0, alpha:0.0)

        let buttonImageView = UIImageView()
        buttonImageView.image = UIImage(named: "APN_AUSearch")
        buttonImageView.frame = CGRect(x:12,y:5,width:18,height:18)
        button.addSubview(buttonImageView)

        let label = UILabel(frame: CGRect(x: 31, y: 0, width: 258, height: 28))
        self.backgroundColor=UIColor(red:0, green:0, blue:0, alpha:0.0)
        label.text="搜索"
        label.textColor=UIColor(red: 153.0/255.0, green: 153.0/255.0, blue: 153/255.0, alpha: 1.0)
        label.font=label.font.withSize(14)
        button.addSubview(label)

        view.addSubview(button)
        self.addSubview(view)
        return
    }
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented"); }
}
