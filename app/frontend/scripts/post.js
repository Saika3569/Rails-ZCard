document.addEventListener("DOMContentLoaded",function(){
  const favorite_btn = document.querySelector('#favorite_btn')
  if (favorite_btn) {
    favorite_btn.addEventListener('click',function(e){
      e.preventDefault()
      const ax = require('axios')

      const token = document.querySelector('[name=csrf-token]').content   
      ax.defaults.headers.common['X-CSRF-TOKEN'] = token

      const postId = e.currentTarget.dataset.id
      const icon = e.Target

      ax.post(`/posts/${postId}/favorite`, {})
        .then(function(resp){
          if (resp.data.status == "added") {
            icon.classList.remove("fas")
            icon.classList.add("far")
          } else {
            icon.classList.remove("far")
            icon.classList.add("fas")
          }
        })
        .catch(function(err) {
          console.log(err);
        })
    })
  }
})