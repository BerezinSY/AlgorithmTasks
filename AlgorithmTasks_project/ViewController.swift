//
//  ViewController.swift
//  AlgorithmTasks_project
//
//  Created by Stanislav BEREZIN on 22.05.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var elements: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        print(elements)
        print(BinarySearchTask().binarySearch(element: 10, in: elements))
        print(elements)
    }
}

