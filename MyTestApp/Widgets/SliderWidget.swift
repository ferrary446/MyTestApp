//
//  ChapterOne.swift
//  MyTestApp
//
//  Created by Ilya Yushkov on 18.06.2021.
//
import SwiftWidgets
import SnapKit

class SliderWidget: Widget, WidgetInstantiable {
    
    typealias Model = SliderWidgetModel
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    
    @IBOutlet weak var rangeSliderOutlet: UISlider!
    
    public let labelComp = LabelComponent()
    
    override func load() {
        super.load()
        
//        spacingConstraint.constant = CGFloat(model.titleImagespacing)
//        imageComp.setup(target: imageView, model: model.image, widgetModel: model)
        labelComp.setup(target: mainLabel, model: model.main, widgetModel: model)
        labelComp.setup(target: rangeLabel, model: model.range, widgetModel: model)
        
        rangeSliderOutlet.minimumTrackTintColor = #colorLiteral(red: 0.8504058376, green: 0.8485570764, blue: 0.8203452312, alpha: 1)
        rangeSliderOutlet.maximumTrackTintColor = UIColor(named: "customColor")
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
