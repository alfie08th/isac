var post_title = document.querySelectorAll('.post_title')
var post_body = document.querySelectorAll('.post_body')
var post_creator = document.querySelectorAll('.post_creator')

for(var i=0; i<post_title.length; i++){
    post_title[i].style.color = 'red'
    post_body[i].style.color = 'blue'
    post_creator[i].style.color = 'dodgerblue'
}