//
//  GuidlinePresentViewController.swift
//  My-Swiftbook
//
//  Created by Aren Musayelyan on 09.06.23.
//

import UIKit

final class GuidlinePresentViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    var method: LanguageGuide = .accessControl {
        didSet {
            textLabel.text = method.rawValue
        }
    }
    
    private lazy var textLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 40)
        label.backgroundColor = .clear
        label.textColor = .black
        label.contentMode = .center
        return label
    }()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textLabel)
        view.backgroundColor = .red
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Do any additional setup after loading the view.
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        textLabel.center = view.center
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func backButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
