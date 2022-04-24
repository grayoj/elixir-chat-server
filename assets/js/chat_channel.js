let ChatChannel = {
    init(socket) {
        let channel = socket.channel('chat_channel:lobby', {})
        channel.join()
        this.listenForChats(channel)
    },


listenForChats(channel) {
    document.getElementById('chat-form').addEventListener('submit', function(e){
      e.preventDefault()

      let chatMessage = document.getElementById("chat-message").value 
      channel.push('shout', {body: message})
  
      document.getElementById('chat-message').value=""
    })
    channel.on('shout', payload => {
        let chatBox = document.querySelector('#chat-container')
        let chatBlock = documment.createElement('p')

        chatBlock.insertAdjacentHTML('beforeend',
         `<b>${payload.name}:</b> ${payload.body}`)
         chatContainer.appendChild(chatBlock)
    })
}

}

export default ChatChannel