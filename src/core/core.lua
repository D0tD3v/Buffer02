function fetchApiData()
  fetchRemote(URL_API, function(responseData, error)
    local data = fromJSON(responseData)
        
    outputChatBox("Atualmente a rocket tem:")
    outputChatBox("Whitelist: "..data.static.whitelists)
    outputChatBox("Whitelist Aprovadas: "..data.static.approvedWhitelists, 0, 255, 100)
    outputChatBox("Whitelist Reprovadas: "..data.static.reprovedWhitelists, 255, 0, 20)
    outputChatBox("Usuarios: "..data.static.users)
    outputChatBox("Usuarios Premium: "..data.static.premiumUsers)
    outputChatBox("Usuarios verificados: "..data.static.verifiedUsers)
    outputChatBox("posts: "..data.static.posts)
    outputChatBox("comentarios: "..data.static.comments)
    outputChatBox("likes: "..data.static.likes)
  end)
end