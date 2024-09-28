//
//  ExplorerViewModel.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 26/08/24.
//

import Foundation

protocol ExplorerViewModelProtocol: AnyObject {
    func success()
    func failure(errorMessage: String)
}

class ExplorerViewModel {
    
    weak var delegate: ExplorerViewModelProtocol?
    
    private var properties: [PropertyDataModel] = []
    private var categoryList: [TravelCategory] = []
    
    func fetchAllMock() {
        fetchPropertiesListMock { [weak self] in
            guard let self else { return }
            fetchCategoryListMock()
        }
    }
    
    func fetchAllRequest() {
        fetchPropertyDataModelList { [weak self] in
            guard let self else { return }
            fetchCategoryList()
        }
    }
    
    func fetchPropertiesListMock(completion: @escaping () -> Void) {
        LocalFileReader.loadJSON(fileName: "place", type: [PropertyDataModel].self) { [weak self] result in
            guard let self else { return }
            
            switch result {
            case .success(let data):
                self.properties = data
                completion()
            case .failure(let error):
                delegate?.failure(errorMessage: error.errorDescription ?? "")
                return
            }
        }
    }
    
    func fetchCategoryListMock() {
        LocalFileReader.loadJSON(fileName: "category", type: [TravelCategory].self) { [weak self] result in
            guard let self else { return }
            
            switch result {
            case .success(let data):
                self.categoryList = data
                delegate?.success()
            case .failure(let error):
                delegate?.failure(errorMessage: error.errorDescription ?? "")
            }
        }
    }
    
    func fetchPropertyDataModelList(completion: @escaping () -> Void) {
        ExploreService.fetchPropertyDataModelList { [weak self] result in
            guard let self else { return }
            
            switch result {
            case .success(let data):
                self.properties = data
                completion()
            case .failure(let error):
                delegate?.failure(errorMessage: error.errorDescription ?? "")
                return
            }
        }
    }
    
    func fetchCategoryList() {
        ExploreService.fetchCategoryList() { [weak self] result in
            guard let self else { return }
            
            switch result {
            case .success(let data):
                self.categoryList = data
                delegate?.success()
            case .failure(let error):
                delegate?.failure(errorMessage: error.errorDescription ?? "")
            }
        }
    }
    
    var getSelectedCategoryIndex: Int {
        return categoryList.firstIndex(where: { $0.isSelected }) ?? 0
    }
    
    var numberOfItems: Int {
        return categoryList.count
    }
    
    func loadCurrentTravelCategory(indexPath: IndexPath) -> TravelCategory {
        return categoryList[indexPath.row]
    }
    
    func getCategory(indexPath: IndexPath) -> String {
        return loadCurrentTravelCategory(indexPath: indexPath).category
    }
    
    func setSelectedCategory(indexPath: IndexPath) {
        let selectedPosition = indexPath.row
        categoryList.indices.forEach { index in
            categoryList[index].isSelected = index == selectedPosition
        }
    }
    
    var numberOfRowsPropertyData: Int {
        return properties.count
    }
    
    func loadCurrentPropertyData(indexPath: IndexPath) -> PropertyDataModel {
        return properties[indexPath.row]
    }
    
}
