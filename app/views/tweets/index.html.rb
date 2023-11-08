<% @tweets.each do |e| %>

    <p>
        <%= e.message %>
        <%= link_to "削除", tweet_path(e), data: {"turbo-method": :delete} %>
        <%= link_to 'いいね', likes_path(tweet_id: e.id), method: :post %>
        <%= link_to 'いいね削除', like_path(e), method: :delete %>
    </p>
<% end %>

<hr>

<% form_for @tweet, url: {action: :create} do |f| %>
    <%= f.label :message, 'message' %>
    <%= f.text_field :message %>
    <%= f.submit 'ツイート' %>
<% end %>

<hr>
<% if session[:login_uid] %>
    <p><%= link_to 'ログアウト', top_logout_path %></p>
<% else %>    
    <p><%= link_to 'ログイン',  top_main_path %></p>
<% end %>

<p><%= link_to 'ユーザー一覧',  users_path %></p>