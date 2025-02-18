//
//  HomeViewController.swift
//  signos
//
//  Created by Jean Ramalho on 13/02/25.
//
import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    var signos: [String] = []
    var significadoSignos: [String] = []
    let contentView: HomeView
    
    init(contentView: HomeView) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        
        contentView.signosTableView.delegate = self
        contentView.signosTableView.dataSource = self
        
        populaArraySignos()
        populaSignificadosSignos()

        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        view.addSubview(contentView)
    }
    
    private func setConstraints(){
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func populaArraySignos(){
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Cáncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Líbra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
    }
    
    private func populaSignificadosSignos(){
        significadoSignos.append("Áries – Determinado e impulsivo, sempre busca desafios e lidera com coragem.")
        significadoSignos.append("Touro – Prático e teimoso, valoriza segurança, conforto e prazeres sensoriais.")
        significadoSignos.append("Gêmeos – Comunicativo e curioso, adora aprender, socializar e se adaptar a mudanças.")
        significadoSignos.append("Câncer – Sensível e protetor, age com emoção e tem forte conexão com o lar e a família.")
        significadoSignos.append("Leão – Carismático e confiante, gosta de brilhar, liderar e ser reconhecido.")
        significadoSignos.append("Virgem – Detalhista e analítico, busca a perfeição e gosta de ajudar com eficiência.")
        significadoSignos.append("Libra – Diplomático e equilibrado, valoriza harmonia, beleza e boas relações.")
        significadoSignos.append("Escorpião – Intenso e misterioso, sente tudo profundamente e busca transformações.")
        significadoSignos.append("Sagitário – Aventureiro e otimista, ama a liberdade, o conhecimento e novas experiências.")
        significadoSignos.append("Capricórnio – Ambicioso e disciplinado, trabalha duro para alcançar seus objetivos.")
        significadoSignos.append("Aquário – Independente e visionário, pensa à frente do tempo e valoriza a originalidade.")
        significadoSignos.append("Peixes – Sonhador e empático, tem uma conexão profunda com as emoções e o mundo espiritual.")
    }
    
    
    @objc private func botaoClicado() {
        print("Botão pressionado!")
    }
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SignosTableViewCell.identifier, for: indexPath) as? SignosTableViewCell else {return UITableViewCell()}
        cell.signoLabel.text = signos[indexPath.row]
        
        return cell
    }
    
    
}
