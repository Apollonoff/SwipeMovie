//
//  ViewController.swift
//  SwipeMovie
//
//  Created by Arseniy Apollonov on 26.10.2023.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    private var createMainMenuView = MainMenuView(frame: UIScreen.main.bounds)
    
    override func loadView() {
        super.loadView()
        self.view = createMainMenuView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButtonTargets()
    }
    
    func setUpButtonTargets() {
        createMainMenuView.createLobbyButton.addTarget(
            self,
            action: #selector(createButtonDidTapped),
            for: .touchUpInside)
        createMainMenuView.joinLobbyButton.addTarget(
            self,
            action: #selector(joinButtonDidTapped),
            for: .touchUpInside)
    }
    
    @objc
    func createButtonDidTapped() {
        let controller = CreateLobbyController()
//                   controller.modalPresentationStyle = .fullScreen
       //            present(controller, animated: true, completion: nil)
                   navigationController?.pushViewController(controller, animated: true)

    }
    
    @objc
    func joinButtonDidTapped() {
        let controller = EnterLobbyController()
//                    controller.modalPresentationStyle = .fullScreen
        //            present(controller, animated: true, completion: nil)
                    navigationController?.pushViewController(controller, animated: true)
    }

}
