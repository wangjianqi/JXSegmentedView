//
//  PagingViewTableHeaderView.swift
//  JXPagingView
//
//  Created by jiaxin on 2018/5/28.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

import UIKit

class PagingViewTableHeaderView: UIView {
    var imageView: UIImageView!
    var imageViewFrame: CGRect!

    override init(frame: CGRect) {
        super.init(frame: frame)

        imageView = UIImageView(image: UIImage(named: "lufei.jpg"))
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
        self.addSubview(imageView)

        imageViewFrame = imageView.frame

        let label = UILabel(frame: CGRect(x: 10, y: frame.size.height - 30, width: 200, height: 30))
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "Monkey·D·路飞"
        label.textColor = UIColor.red
        //top和right
        label.autoresizingMask = AutoresizingMask(rawValue: AutoresizingMask.flexibleRightMargin.rawValue | AutoresizingMask.flexibleTopMargin.rawValue)
        self.addSubview(label)
    }

    //滑动：背景图拉伸
    func scrollViewDidScroll(contentOffsetY: CGFloat) {
        var frame = imageViewFrame!
        frame.size.height -= contentOffsetY
        frame.origin.y = contentOffsetY
        imageView.frame = frame
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
