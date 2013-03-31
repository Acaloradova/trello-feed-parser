require 'json'
class TrelloParser    
  def parseJson(json) 
    result='Name,Description'
	trelloCards = JSON.parse(json)
	result += "\n"+trelloCards["name"]
    return result 
  end  
end  

