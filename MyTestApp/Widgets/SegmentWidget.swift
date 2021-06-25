//
//  SegmentWidget.swift
//  MyTestApp
//
//  Created by Ilya Yushkov on 25.06.2021.
//

import SnapKit
import SwiftWidgets

class SegmentWidget: Widget, WidgetInstantiable {
    
    typealias Model = SegmentWidgetModel
    
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var segmentedOutlet: UISegmentedControl!
    
    let font = UIFont(name: "Jost-Regular", size: 14)
    let color = UIColor(.white)
    
    override func load() {
        
        LabelComponent().setup(target: labelOutlet, model: model.label, widgetModel: model)
        segmentedOutlet.selectedSegmentTintColor = UIColor(named: "customColor")
        segmentedOutlet.setTitle("DAUER", forSegmentAt: 0)
        segmentedOutlet.setTitle("OPTION 2", forSegmentAt: 1)
        segmentedOutlet.setTitle("A-Z", forSegmentAt: 2)
        
        segmentedOutlet.setTitleTextAttributes([NSAttributedString.Key.font: font ?? UIFont.systemFont(ofSize: 14)], for: .normal)
        segmentedOutlet.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: color], for: .selected)
        
    }
}

class SegmentWidgetModel: WidgetModel {
    
    var label = LabelComponentModel()
    
    override func afterInit() {
        label.alignment = .left
        height = 80
        width = 100
    } 
}
