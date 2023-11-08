<%= form_for @user, url: {action: :create} do |f| %>

    <%= f.label :uid, 'UID' %>
    <%= f.text_field :uid %>
    <p>
        <%= f.label :password, 'PASS' %>
        <%= f.password :password %>
    </p>
    <p>
        <%= f.label :password_confirmation, 'パスワード(確認)' %>
        <%= f.password_field :password_confirmation %>
    </p>
    
    <%= f.label :age, 'AGE' %>
    <%= f.text_field :age %>
    <%= f.submit '登録' %>
   
<% end %>