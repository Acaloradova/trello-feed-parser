require 'json'
class TrelloParser    
  def parseJson(json) 
    result='Name,Description'
	trelloCards = JSON.parse(json)
	result += "\n"+trelloCards["name"]
    return result 
  end  
end  

parser = TrelloParser.new()
actualResult=parser.parseJson('{"id":"50ba303c7b4a6f8f2b005cc2","name":"TestParser","desc":"","closed":false,"idOrganization":null,"invited":false,"pinned":true,"url":"https://trello.com/board/testparser/50ba303c7b4a6f8f2b005cc2","prefs":{"permissionLevel":"private","voting":"members","comments":"members","invitations":"members","selfJoin":false,"cardCovers":true},"invitations":[],"memberships":[{"id":"50ba303c7b4a6f8f2b005cc6","idMember":"4eda466253a776a00a49c32a","memberType":"admin","deactivated":false}],"subscribed":false,"labelNames":{"red":"","orange":"","yellow":"","green":"","blue":"","purple":""},"checklists":[],"cards":[{"id":"50ba3043be2e85e445012858","badges":{"votes":0,"viewingMemberVoted":false,"subscribed":false,"fogbugz":"","checkItems":0,"checkItemsChecked":0,"comments":0,"attachments":0,"description":false,"due":null},"checkItemStates":[],"closed":false,"desc":"","due":null,"idBoard":"50ba303c7b4a6f8f2b005cc2","idChecklists":[],"idList":"50ba303c7b4a6f8f2b005cc3","idMembers":[],"idShort":1,"idAttachmentCover":null,"manualCoverAttachment":false,"labels":[],"name":"Test","pos":65535,"subscribed":false,"url":"https://trello.com/card/test/50ba303c7b4a6f8f2b005cc2/1","attachments":[]}],"actions":[{"id":"50ba3043be2e85e445012859","idMemberCreator":"4eda466253a776a00a49c32a","data":{"list":{"name":"To Do","id":"50ba303c7b4a6f8f2b005cc3"},"board":{"name":"TestParser","id":"50ba303c7b4a6f8f2b005cc2"},"card":{"name":"Test","idShort":1,"id":"50ba3043be2e85e445012858"}},"type":"createCard","date":"2012-12-01T16:28:51.955Z","memberCreator":{"id":"4eda466253a776a00a49c32a","avatarHash":"7a3734e7d6c89a8bc1ad2762031ef648","fullName":"Julia Atlygina","initials":"J","username":"atlygina"}},{"id":"50ba303c7b4a6f8f2b005cc7","idMemberCreator":"4eda466253a776a00a49c32a","data":{"board":{"name":"TestParser","id":"50ba303c7b4a6f8f2b005cc2"}},"type":"createBoard","date":"2012-12-01T16:28:44.122Z","memberCreator":{"id":"4eda466253a776a00a49c32a","avatarHash":"7a3734e7d6c89a8bc1ad2762031ef648","fullName":"Julia Atlygina","initials":"J","username":"atlygina"}}],"members":[{"id":"4eda466253a776a00a49c32a","avatarHash":"7a3734e7d6c89a8bc1ad2762031ef648","bio":"","fullName":"Julia Atlygina","initials":"J","status":"active","url":"https://trello.com/atlygina","username":"atlygina"}],"lists":[{"id":"50ba303c7b4a6f8f2b005cc3","name":"To Do","closed":false,"idBoard":"50ba303c7b4a6f8f2b005cc2","pos":16384,"subscribed":false},{"id":"50ba303c7b4a6f8f2b005cc4","name":"Doing","closed":false,"idBoard":"50ba303c7b4a6f8f2b005cc2","pos":32768,"subscribed":false},{"id":"50ba303c7b4a6f8f2b005cc5","name":"Done","closed":false,"idBoard":"50ba303c7b4a6f8f2b005cc2","pos":49152,"subscribed":false}]}')
expectedResult ='Name,Description\nTest,Description'
if actualResult==expectedResult
  puts "OK"
else
  puts "Test failed!\nActual Result: #{actualResult} \nExpectedResult: #{expectedResult}"
end
