//
//  WelcomeViewController.swift
//  SOPT-Seminar
//
//  Created by 송여경 on 3/30/24.
//

import UIKit
import Foundation

class WelcomeViewController: UIViewController {
    
    var id : String? //? : 기본값은 nil, 회원 아이디 표시 위함

       private let welcomeLabel: UILabel = {
            let label = UILabel(frame: CGRect(x: 140, y: 295, width: 95, height: 60))
            label.text = "???님 \n반가워요!"
            label.font = UIFont(name: "Pretendard-ExtraBold", size: 25)
            label.textAlignment = .center
            label.numberOfLines = 2
           
            return label
        }()
    
       private let logoImageView: UIImageView = {
           let imageView = UIImageView(frame: CGRect(x: 112, y: 120, width: 150, height:  150))
           imageView.image = UIImage(named: "dog")
           return imageView
    }()
        
       private var goHomeButton: UIButton = {
            let button = UIButton(frame: CGRect(x: 20, y: 426, width: 335, height: 58))
            button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
            button.setTitle("메인으로", for: .normal)
            button.setTitleColor(.white, for: .normal) //for: .normal을 사용하는 이유는 버튼이 일반 상태일 때의 텍스트 색상을 지정하기 위해서/ normal이 일반적이다.
            button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
            return button
        }()
        
        private lazy var backToLoginButton: UIButton = {
            let button = UIButton(frame: CGRect(x: 20, y: 498, width: 335, height: 58))
            button.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
            button.setTitle("다시 로그인", for: .normal)
            button.setTitleColor(UIColor(red: 172/255, green: 176/255, blue: 185/255, alpha: 1), for: .normal)
            button.addTarget(self, action: #selector(backToLoginButtonDidTap),
                             for: .touchUpInside) //버튼이 눌렸을 때 해당 함수가 호출
            button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
            return button 
        }()
    
        private func bindID() {
            guard let idText = id else { return }
            self.welcomeLabel.text = "\(idText)님 \n반가워요!"
        }
        
        func setLabelText(id: String?) {
            self.id = id
        }
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.setupSearchController()
  
            self.view.backgroundColor = .white
            setLayout()
            bindID()
        }
       func setupSearchController(){
           let searchBar = UISearchBar(frame: CGRect(x:0, y:0, width: 280, height:0))
           
           let searchController = UISearchController(searchResultsController: nil)
           searchController.searchBar.placeholder = "당근"
           searchController.hidesNavigationBarDuringPresentation = false //계속 보여주고 싶어서 false

           self.navigationItem.searchController = searchController
           self.navigationItem.title = "Search"
           self.navigationItem.hidesSearchBarWhenScrolling = false
       }

        private func setLayout() {
            [logoImageView, welcomeLabel, goHomeButton, backToLoginButton].forEach {
                self.view.addSubview($0)
            }
        }
        
        @objc
        private func backToLoginButtonDidTap() {
            if self.navigationController == nil {
                self.dismiss(animated: true)
            } else {
                self.navigationController?.popViewController(animated: true)
            }
        }
        
        
}
