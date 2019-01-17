# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# <form action="post"  method="POST">

#  <input name="title" type="text">
#  <textarea name="body"></textarea>
#  <input name="user name" type="text">
# </form>

# <div>
#     <% @posts.each do |post| %>
#     <h2> <%=post.title%></h2>
#     <a href="/posts/<%= post.id %>">DELETE</a>
#     <% end %>

# </div>


    # <nav id="my_nav_bar">
    #     <div id="nav_one"><div id="about_div"><a id="about" href="#">About</a></div></div>
    #     <div id="nav_two"><div id="contact_div"><a id="contact" href="#">Contact</a></div></div>
    #     <div id="nav_three"><div id="home_div"><a id="home" href="#">Home</a></div></div>
    # </nav>


<form class="ui form" method="POST" action="/posts">
    <%= hidden_field_tag :authenticity_token, form_authenticity_token %>
    <% if current_user %>
        <div class="field">
            <label>Add Title</label>
            <input name="title" type="text">
        </div>
        <div class="field">
            <label>Add Content</label>
            <textarea id="user_blog_paragraph"required type="text" name="body" cols="50" rows="10"></textarea>
        </div>
        <div class="field">
            <label>Author</label>
            <input name="author" type="text">
        </div>
        <button class="ui button"  type="submit"> Submit </button>
    < % end %>
</form>

<div id="user_post">
    <% @posts.each do |post| %>
        <h2 class="post_title"><%=post.title%></h2>
        <p class="post_body"><%= post.body %> </p>
        <% if current_user && current_user.id==post.user.id %>
            <a href="/post/<%= post.user_id %>">Delete</a>
        <% end %>
        <p class="post_creator"><b>Post by <%= post.user.username %></b> </p>
    <%end%>
</div>
