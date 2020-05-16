//
//  ViewController.swift
//  massFor
//
//  Created by Mario Perozo on 5/15/20.
//  Copyright © 2020 Mario Perozo. All rights reserved.
//

import UIKit

struct microbe {
    let name: String;
    let image: UIImage;
}

//if v >= 1 && v <= 16 {
//picture.image = UIImage(named: "frame_\(v)")
//picture.image = UIImage(named: "frame_\(v+1)");
//v = v + 1

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let microbes: [microbe] = [
            microbe(name: "microbe1",             image: UIImage(named: "microbe")!),
            microbe(name: "microbe2",             image: UIImage(named: "microbe")!),
            microbe(name: "microbe3",             image: UIImage(named: "microbe")!),
            microbe(name: "microbe4",             image: UIImage(named: "microbe")!),
            microbe(name: "microbe5",             image: UIImage(named: "microbe")!),
            microbe(name: "microbe5",             image: UIImage(named: "microbe")!)
        ];
        
        let stackView: UIStackView = UIStackView();
        stackView.axis = .vertical;
        stackView.spacing = 5.0;
        stackView.alignment = .center;    //.leading, .center, .trailing
        stackView.distribution = .equalCentering; //.fillEqally, .equalSpacing, .equalCentering, .fillProportionally
        stackView.translatesAutoresizingMaskIntoConstraints = false;
        view.addSubview(stackView);
        
        //Center the UIStackView in the big white view, constrain the dimensions.
        let constraints: [NSLayoutConstraint] = [
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            stackView.widthAnchor .constraint(equalToConstant: 50.0),
            stackView.heightAnchor.constraint(equalToConstant: 150.0)
        ];
        NSLayoutConstraint.activate(constraints);
        
        for microbe: microbe in microbes {
            let picture: UIImageView = UIImageView();
            picture.image = UIImage(named: "microbe");
            picture.sizeToFit();
            stackView.addArrangedSubview(picture);
        }
    }


}

