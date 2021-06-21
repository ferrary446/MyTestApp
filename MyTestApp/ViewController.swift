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
        addHeader("Audi")
        do {
            addReusableWidget(Chapter.self) {
                $0.name.text = "S3"
                $0.name.alignment = .left
                $0.name.color = .lightGray
                $0.image.image = #imageLiteral(resourceName: "audi")
                $0.titleImagespacing = 40
                
            }
        }
        addHeader("BMW")
        do {
            addReusableWidget(Chapter.self) {
                $0.name.text = "M5"
                $0.name.alignment = .left
                $0.name.color = .lightGray
                $0.image.image = #imageLiteral(resourceName: "bmw")
                $0.titleImagespacing = 40
                
            }
        }
        addHeader("Mercedes-Benz")
        do {
            addReusableWidget(Chapter.self) {
                $0.name.text = "E350"
                $0.name.alignment = .left
                $0.name.color = .lightGray
                $0.image.image = #imageLiteral(resourceName: "mercedes")
                $0.titleImagespacing = 40
                
            }
        }
        addHeader("Skoda")
        do {
            addReusableWidget(Chapter.self) {
                $0.name.text = "Octavia RS"
                $0.name.alignment = .left
                $0.name.color = .lightGray
                $0.image.image = #imageLiteral(resourceName: "skoda")
                $0.titleImagespacing = 40
                
            }
        }
    }
}

extension ViewController {
    
    private func addHeader(_ text: String) {
        addReusableWidget(LabelWidget.self) {
            $0.text.text = text
            $0.text.font = Settings.Font.with(size: 25)
            $0.text.color = UIColor.white
            $0.text.alignment = .center
            $0.color.background = Settings.Color.primary
            $0.padding.vertical = Settings.Offset.basic
            $0.separator.enabled = false
        }
    }
    
}
