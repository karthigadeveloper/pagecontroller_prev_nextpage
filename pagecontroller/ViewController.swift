//
//  ViewController.swift
//  pagecontroller
//
//  Created by Karthiga on 12/18/23.
//

import UIKit

class ViewController: UIViewController {
    var currentpage = 0
    
    @IBOutlet weak var pagectrl: UIPageControl!
    @IBOutlet weak var netbtn: UIButton!
   
    @IBOutlet weak var donebtn: UIButton!
    @IBOutlet weak var prev: UIButton!
    @IBOutlet weak var imagebox: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func done(_ sender: Any) {
        imagebox.image = UIImage(named: "img4")
        prev.isHidden = true
        netbtn.isHidden = true
    }
    
    @IBAction func prev(_ sender: Any) {
        if currentpage > 0{
            currentpage -= 1
            imagebox.image = UIImage(named: "img1")
            updatepagecontroller()
        }
        else if currentpage > 1{
            currentpage -= 2
            imagebox.image = UIImage(named: "img2")
            updatepagecontroller()
        }else if currentpage > 2 {
            currentpage -= 3
            imagebox.image = UIImage(named: "img3")
            updatepagecontroller()
        }
        else if currentpage > 3{
            currentpage -= 4
            imagebox.image = UIImage(named: "img3")
            updatepagecontroller()
        }else{
            imagebox.image = UIImage(named: "img1")
            updatepagecontroller()
        }
    }
    @IBAction func next(_ sender: Any) {
        
        if currentpage < pagectrl.numberOfPages{
            currentpage += 1
            imagebox.image = UIImage(named: "img2")
            updatepagecontroller()
        }else if currentpage < pagectrl .numberOfPages{
            currentpage += 2
            imagebox.image = UIImage(named: "img3")
            updatepagecontroller()
        }
        else if currentpage<pagectrl.numberOfPages{
            currentpage += 3
            imagebox.image = UIImage(named: "img1")
            updatepagecontroller()
        }
        
    }
    func updatepagecontroller(){
        imagebox.image = UIImage(named: "img\(currentpage + 1)")
        pagectrl.currentPage = currentpage
    }

}

