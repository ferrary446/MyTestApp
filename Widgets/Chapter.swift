//
//  ChapterOne.swift
//  MyTestApp
//
//  Created by Ilya Yushkov on 18.06.2021.
//
import SwiftWidgets
import SnapKit

class Chapter: Widget, WidgetInstantiable {
    
    typealias Model = ChapterModel
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var spacingConstraint: NSLayoutConstraint!
    
    public let imageComp = ImageComponent()
    
    override func load() {
        super.load()
        
        spacingConstraint.constant = CGFloat(model.titleImagespacing)
        imageComp.setup(target: imageView, model: model.image, widgetModel: model)
        LabelComponent().setup(target: nameLabel, model: model.name, widgetModel: model)
    }
}

class ChapterModel: WidgetModel {
    
    var name = LabelComponentModel()
    var image = ImageComponentModel()
    
    var titleImagespacing: Float = 20
    
    override func afterInit() {
        
        name.alignment = .center
        height = 300
    }
}
