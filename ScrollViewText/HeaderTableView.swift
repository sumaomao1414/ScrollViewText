//
//  HeaderTableView.swift
//  ScrollViewText
//
//  Created by maomao on 2017/11/23.
//  Copyright © 2017年 maomao. All rights reserved.
//

import Foundation
import UIKit

class HomeScrollPageView: HJTabViewController,HJTabViewControllerDataSource, HJTabViewControllerDelagate, HJDefaultTabViewBarDelegate {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabDelegate = self
        self.tabDataSource = self
        self.headerZoomIn = false
        let tabViewBar = HJDefaultTabViewBar()
        tabViewBar.delegate = self;
        let tabViewBarPlugin = HJTabViewControllerPlugin_TabViewBar.init(tabViewBar: tabViewBar, delegate: nil)
        enablePlugin(tabViewBarPlugin)
       // enablePlugin(HJTabViewControllerPlugin_HeaderScroll())
        
    }
    
    func numberOfTab(for tabViewBar: HJDefaultTabViewBar!) -> Int {
        return self.numberOfViewController(for: self)
    }
    
    func tabViewBar(_ tabViewBar: HJDefaultTabViewBar!, titleFor index: Int) -> Any! {
        if index == 0 {
            return "推荐"
        }else if(index == 1){
            return "最新"
        }else if (index == 2){
            return "附近"
        }else{
            return "关注";
        }
    }
    
    func tabViewBar(_ tabViewBar: HJDefaultTabViewBar!, didSelect index: Int) {
        let anim : Bool = labs(index - curIndex) > 1 ? false : true
        scroll(to: index, animated: anim)
    }
    
    func numberOfViewController(for tabViewController: HJTabViewController!) -> Int {
        return 4
    }
    
    func tabViewController(_ tabViewController: HJTabViewController!, viewControllerFor index: Int) -> UIViewController! {
        let vc = TableViewController()
        vc.index = index
        return vc
    }
    
    func tabHeaderView(for tabViewController: HJTabViewController!) -> UIView! {
        let view = UIView(frame:CGRect(x: 0, y: 0, width: 375, height: 250))
        view.backgroundColor = UIColor.yellow
        view.isUserInteractionEnabled = true
        return view
    }
    
    
    func tabHeaderBottomInset(for tabViewController: HJTabViewController!) -> CGFloat {
        return 44
    }
    
    func containerInsets(for tabViewController: HJTabViewController!) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 0, 0, 0);
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
