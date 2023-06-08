//
//  Extensions.swift
//  My-Swiftbook
//
//  Created by Aren Musayelyan on 08.06.23.
//

import Foundation
import UIKit


extension SwiftGuideViewController:  UITableViewDelegate, UITableViewDataSource, UIGestureRecognizerDelegate {
    
    // MARK: - UITableViewDataSource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows you want in your table
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Customize the cell appearance and content
        cell.textLabel?.text = "\(data[indexPath.row].rawValue)"
        cell.backgroundColor = .clear
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        delegate?.celDidSelect(method: data[indexPath.row])
    }
    
    
}
