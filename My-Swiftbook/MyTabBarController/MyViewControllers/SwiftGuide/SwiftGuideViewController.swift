//
//  SwiftGuideViewController.swift
//  My-Swiftbook
//
//  Created by Aren Musayelyan on 08.06.23.
//

import UIKit

enum LanguageGuide: String, CaseIterable {
    case basicOperators = "Basic Operators"
    case stringsAndCharacters = "Strings And Characters"
    case collectionTypes = "Collection Types"
    case controlFlow = "Control Flow"
    case functions = "Functions"
    case closures = "Closures"
    case enumerations = "Enumerations"
    case structuresAndClasses = "Structures And Classes"
    case properties = "Properties"
    case methods = "Methods"
    case subscripts = "Subscripts"
    case inheritance = "Inheritance"
    case initialization = "Initialization"
    case deinitialization = "Deinitialization"
    case optionalChaining = "Optional Chaining"
    case errorHandling = "Error Handling"
    case concurrency = "Concurrency"
    case macros = "Macros"
    case typeCasting = "Type Casting"
    case nestedTypes = "Nested Types"
    case extensions = "Extensions"
    case protocols = "Protocols"
    case generics = "Generics"
    case opaqueAndBoxedTypes = "Opaque And Boxed Types"
    case automaticReferenceCounting = "Automatic Reference Counting"
    case memorySafety = "Memory Safety"
    case accessControl = "Access Control"
    case advancedOperators = "Advanced Operators"
}

protocol SwiftGuideViewControllerDelegate: AnyObject {
    func celDidSelect(method: LanguageGuide)
}

class SwiftGuideViewController: UIViewController {
    
    weak var delegate: SwiftGuideViewControllerDelegate?
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var data: [LanguageGuide] =  [ .basicOperators,
                                   .stringsAndCharacters,
                                   .collectionTypes,
                                   .functions,
                                   .closures,
                                   .enumerations,
                                   .structuresAndClasses,
                                   .properties,
                                   .methods,
                                   .subscripts,
                                   .inheritance,
                                   .initialization,
                                   .deinitialization,
                                   .optionalChaining,
                                   .errorHandling,
                                   .concurrency,
                                   .macros,
                                   .typeCasting,
                                   .nestedTypes,
                                   .extensions,
                                   .protocols,
                                   .generics,
                                   .opaqueAndBoxedTypes,
                                   .automaticReferenceCounting,
                                   .memorySafety,
                                   .accessControl,
                                   .advancedOperators ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(data)
        // Set up the UITableView
        tableView.delegate = self
        tableView.dataSource = self
        // Register a UITableViewCell class or custom cell class if you have one
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
}
