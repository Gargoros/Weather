
import Foundation

struct SysModel: Codable {

  var country : String? = nil
  var sunrise : Int?    = nil
  var sunset  : Int?    = nil

  enum CodingKeys: String, CodingKey {

    case country = "country"
    case sunrise = "sunrise"
    case sunset  = "sunset"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    country = try values.decodeIfPresent(String.self , forKey: .country )
    sunrise = try values.decodeIfPresent(Int.self    , forKey: .sunrise )
    sunset  = try values.decodeIfPresent(Int.self    , forKey: .sunset  )
 
  }

  init() {

  }

}
