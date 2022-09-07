//
//  ViewController.swift
//  World-Tracking
//
//  Created by De Morgan on 9/5/22.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneview: ARSCNView!
    let configuration = ARWorldTrackingConfiguration ()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sceneview.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
        
        self.sceneview.session.run(configuration)
        // Do any additional setup after loading the view.
    }

    @IBAction func add(_ sender: Any) {
        let node = SCNNode()
        node.geometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        node.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        node.position = SCNVector3(0,0,0.3)
        self.sceneview.scene.rootNode.addChildNode(node) //rootnode is at your starting position
    }
    
}

