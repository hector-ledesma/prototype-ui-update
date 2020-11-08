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
        self.setUpScrollView()


        //  Customize Page Controller
        pageControl.numberOfPages = 2
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.blue
    }


    /// This function will set up the two slides for the sign-up process
    private func setUpViews() {

        let slide1:SignupPageOne = Bundle.main.loadNibNamed("SignupPageOne", owner: self, options: nil)?.first as! SignupPageOne

        scrollView.contentSize = CGSize(width: scrollView.frame.width * 2, height: scrollView.frame.height)
        scrollView.isPagingEnabled = true

        slide1.frame = CGRect(x: 0, y: 0, width: scrollView.frame.width, height: scrollView.frame.height)
        scrollView.addSubview(slide1)

        let slide2:SignupPageTwo = Bundle.main.loadNibNamed("SignupPageTwo", owner: self, options: nil)?.first as! SignupPageTwo

        slide2.frame = CGRect(x: scrollView.frame.width, y: 0, width: scrollView.frame.width, height: scrollView.frame.height)
        scrollView.addSubview(slide2)

    }

    private func setUpScrollView() {

        scrollView.delegate = self
        scrollView.isDirectionalLockEnabled = true;
        scrollView.backgroundColor = UIColor.purple

        //  Constraints
        scrollView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 1),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: pageControl.topAnchor, constant: 20)
        ])
    }

    //  MARK: - Functionality for navigating the signup process.

}

//  MARK: - UISCrollViewDelegate
extension SignupViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        pageControl.currentPage = Int(pageIndex)


    }
}
