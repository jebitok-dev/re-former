<%= form_with model: @user do |f| %>
<%= f.email_field :email, placeholder: "Email", value: @user.email %><br /> <br/>
    
<%= f.text_field :username, placeholder: "Username", value: @user.username %><br /> <br/>
<%= f.password_field :password, placeholder: "Password" %><br /> <br/>
<%= f.password_field :password_confirmation, placeholder: "Confirm Password" %><br /> <br/>
<%= f.submit "Submit" %>
<% end %>