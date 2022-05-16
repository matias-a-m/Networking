import UIKit
import Foundation

struct SomeVehicles{
    static let scheme = "https"
    static let host = "lumiere-a.akamaihd.net"
    static let pathTieFighter = "/v1/images/vaders-tie-fighter_8bcb92e1.jpeg"
    static let pathXWings = "/v1/images/X-Wing-Fighter_47c7c342.jpeg"
    
    
    enum ParameterKey:String{
        case region = "region"
    }
    
    enum MediaType:String{
        case XWINGSTARFIGHTERPath = "0%2C1%2C1536%2C864",
             DARTHVADERSTIEFIGHTERPath = "0%2C147%2C1560%2C878&width=1536"
    }
    // https://lumiere-a.akamaihd.net/v1/images/X-Wing-Fighter_47c7c342.jpeg?region=0%2C1%2C1536%2C864
    
}

var getVehiclesStarWarsURL = URLComponents()
getVehiclesStarWarsURL.scheme = SomeVehicles.scheme
getVehiclesStarWarsURL.host = SomeVehicles.host
getVehiclesStarWarsURL.path = SomeVehicles.pathXWings

getVehiclesStarWarsURL.queryItems = [URLQueryItem(name: SomeVehicles.ParameterKey.region.rawValue, value: SomeVehicles.MediaType.XWINGSTARFIGHTERPath.rawValue)]

print(getVehiclesStarWarsURL)

