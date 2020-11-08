//
//  ViewController.swift
//  prototype-ui-update
//
//  Created by Karen Rodriguez on 11/6/20.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setUpViews()
    }

    private func setUpViews() {

        let slide1:SignupPageOne = Bundle.main.loadNibNamed("SignupPageOne", owner: self, options: nil)?.first as! SignupPageOne

        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height)
        scrollView.isPagingEnabled = true

        slide1.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.addSubview(slide1)

    }


}

