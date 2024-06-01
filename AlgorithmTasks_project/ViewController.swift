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
        var elements: [Int] = [1, 1, 2, 2, 3, 4]
        print(elements)
        print(RemoveElementTask().removeElement(&elements, 2))
        print(elements)
    }
}

