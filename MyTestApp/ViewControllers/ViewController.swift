//
//  WidgetViewController.swift
//  MyTestApp
//
//  Created by Ilya Yushkov on 15.06.2021.
//
import SnapKit
import SwiftWidgets

class ViewController: WidgetTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWidgets()
    }
    
    private func loadWidgets() {
        
        addHeader("Filter")
        addSpace(19)
        addButton("Routentyp", 2)
        addSpace(28)
        addSlider("Lange", "0 km - 52 km")
        addSpace(30)
        addSlider("Dauer", "30 Min. - 3 Std.")
        addSpace(29)
        addButton("Schwierigkeit", 3)
        addSpace(38)
        addSlider("Hohendifferenz", "0 m - >3000m")
        addSpace(19)
        addSegment("Sortieren nach")
    }
    
}

extension ViewController {
    
    private func addHeader(_ text: String) {
        addReusableWidget(LabelWidget.self) {
            $0.text.text = text
            $0.text.font = UIFont(name: "Jost-Regular", size: 20)
            $0.text.color = UIColor.black
            $0.text.alignment = .center
            $0.separator.enabled = false
        }
    }
    
    private func addButton(_ text: String, _ countOfButtons: Int) {
        
        addReusableWidget(LabelWidget.self) {
            $0.text.text = text
            $0.text.font = UIFont(name: "Jost-Regular", size: 16)
            $0.padding.left = 20
            $0.separator.enabled = false
        }
        
        do {
            
            let container = addWidget(HStackWidget.self) {
                
                $0.padding.left = 17
                $0.padding.right = 16
                $0.itemSpacing = 8
                $0.height = 60
                $0.width = 100
                $0.separator.enabled = false
                
            }
            
            (0..<countOfButtons).forEach { _ in
                
                let button = container.model.addWidget(ButtonWidget.self) {
                    $0.text.text = "FREE"
                    $0.text.font = UIFont(name: "Jost-Regular", size: 14)
                    $0.text.alignment = .center
                    $0.text.color = .white
                    $0.buttonColor = UIColor(named: "customColor")
                    $0.disabledTextColor = .black
                    $0.disabledColor = #colorLiteral(red: 0.8504058376, green: 0.8485570764, blue: 0.8203452312, alpha: 1)
                    $0.padding.all = 0
                    $0.separator.enabled = false
//                    $0.width = 74
//                    $0.height = 34
                    $0.cornerRadius = 0.45
                }
                
                button.model.tap = { _ in
                    button.model.isEnabled = !button.model.isEnabled
                    button.updateButton()
                }
                
            }
        }
    }
    
    private func addSlider(_ mainText: String, _ rangeText: String) {
        
        addReusableWidget(SliderWidget.self) {
            $0.main.text = mainText
            $0.main.font = UIFont(name: "Jost-Regular", size: 16)
            $0.range.text = rangeText
            $0.range.font = UIFont(name: "Jost-Regular", size: 14)
            $0.range.color = .systemGray
            $0.padding.left = 22
            $0.padding.right = 17
            $0.separator.enabled = false
        }
        
    }
    
    private func addSegment(_ mainText: String) {
        
        addReusableWidget(SegmentWidget.self) {
            $0.label.text = mainText
            $0.label.font = UIFont(name: "Jost-Regular", size: 16)
            $0.padding.all = 50
        }
    }
    
}
