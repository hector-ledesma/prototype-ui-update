//
//  ViewController.swift
//  prototype-ui-update
//
//  Created by Karen Rodriguez on 11/6/20.
//

import UIKit

class SignupViewController: UIViewController {


    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setUpViews()

        pageControl.numberOfPages = 2
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.blue
    }


    /// This function will set up the two slides for the sign-up process
    private func setUpViews() {

        let slide1:SignupPageOne = Bundle.main.loadNibNamed("SignupPageOne", owner: self, options: nil)?.first as! SignupPageOne

        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * 2, height: view.frame.height)
        scrollView.isPagingEnabled = true

        slide1.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.addSubview(slide1)

        let slide2:SignupPageTwo = Bundle.main.loadNibNamed("SignupPageTwo", owner: self, options: nil)?.first as! SignupPageTwo

        slide2.frame = CGRect(x: view.frame.width, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.addSubview(slide2)


    }


}
