//
//  ChapterOne.swift
//  MyTestApp
//
//  Created by Ilya Yushkov on 18.06.2021.
//
import SwiftWidgets
import SnapKit
import MultiSlider

class SliderWidget: Widget, WidgetInstantiable {
    
    typealias Model = SliderWidgetModel
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    
    @IBOutlet weak var rangeSliderOutlet: MultiSlider!
    
    public let labelComp = LabelComponent()
    
    override func load() {
        super.load()
        
        //        spacingConstraint.constant = CGFloat(model.titleImagespacing)
        //        imageComp.setup(target: imageView, model: model.image, widgetModel: model)
        labelComp.setup(target: mainLabel, model: model.main, widgetModel: model)
        labelComp.setup(target: rangeLabel, model: model.range, widgetModel: model)
        
        rangeSliderOutlet.tintColor = UIColor(named: "customColor")
    }
    
}

class SliderWidgetModel: WidgetModel {
    
    var main = LabelComponentModel()
    var range = LabelComponentModel()
    
    //var titleImagespacing: Float = 20
    
    override func afterInit() {
        
        main.alignment = .left
        range.alignment = .right
        height = 43
        width = 343
    }
}
