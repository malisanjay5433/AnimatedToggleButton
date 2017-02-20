//
//  ViewController.swift
//  AnimateButton
//
//  Created by Sanjay Mali on 20/02/17.
//  Copyright © 2017 Sanjay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var smileButton: ButtonX!
    @IBOutlet weak var moreButton: ButtonX!
    @IBOutlet weak var likeButton: ButtonX!
    @IBOutlet weak var suffel: ButtonX!
    var shuffelButtonCenter:CGPoint!
    var likeButtonCenter:CGPoint!
    var smileButtonCenter:CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // x,y positon 
        shuffelButtonCenter  = suffel.center
        likeButtonCenter = likeButton.center
        smileButtonCenter = smileButton.center
        
        // Set shuffel,Smile,like into Center of an MoreButton
        suffel.center  = moreButton.center
        smileButton.center = moreButton.center
        likeButton.center = moreButton.center
    }
       @IBAction func moreAction(_ sender: ButtonX) {
        if moreButton.currentImage == #imageLiteral(resourceName: "More_off"){
            UIView.animate(withDuration: 0.8, animations: {
                self.suffel.alpha = 1
                self.likeButton.alpha = 1
                self.smileButton.alpha = 1
                //All animaton here!
                self.suffel.center = self.shuffelButtonCenter
                self.likeButton.center = self.likeButtonCenter
                self.smileButton.center = self.smileButtonCenter
            })
        }else{
            UIView.animate(withDuration: 0.8, animations: {
                self.suffel.alpha = 0
                self.likeButton.alpha = 0
                self.smileButton.alpha = 0
                self.suffel.center  = self.moreButton.center
                self.smileButton.center = self.moreButton.center
                self.likeButton.center = self.moreButton.center
            })
        }
        toggleButton(button: sender, onImage:#imageLiteral(resourceName: "More_on"), offImage: #imageLiteral(resourceName: "More_off"))
    }
    
    @IBAction func likeAction(_ sender: ButtonX) {
        toggleButton(button: sender, onImage:#imageLiteral(resourceName: "Like_on"), offImage:#imageLiteral(resourceName: "Like Filled_off"))
    }
    @IBAction func smileAction(_ sender: ButtonX) {
        toggleButton(button: sender, onImage:#imageLiteral(resourceName: "In Love_off"), offImage:#imageLiteral(resourceName: "In Love_on"))
        
    }
    @IBAction func shuffleAction(_ sender: ButtonX) {
        toggleButton(button: sender, onImage:#imageLiteral(resourceName: "Shuffle_on"), offImage:#imageLiteral(resourceName: "Shuffle_off"))
        
    }
    func toggleButton(button:ButtonX,onImage:UIImage,offImage:UIImage){
        
        if button.currentImage == offImage{
            button.setImage(onImage,for:.normal)
        } else{
            button.setImage(offImage,for:.normal)
        }
    }
}

