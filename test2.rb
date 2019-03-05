<div class="container">
  <h3>Choisis ton camp de base</h3>
<<<<<<< divers

  <div class="row">
    <div class="col s12">
      <ul class="tabs tabs-fixed-width">
        <li class="tab col s1"><a class="active" href="#list">Liste</a></li>
        <li class="tab col s1"><a class="" href="#map-ba">Carte</a></li>
      </ul>
        <div id="list">
          <div class="slide-container">
          <% @basecamps_activities.each do |base| %>
            <div class="col s12 m4">
              <h4 class="header"><%= base.basecamp.name.encode("iso-8859-1").force_encoding("utf-8")%></h4>
              <div class="card card-basecamp-activity horizontal small">
                <div class="card-image">
                  <% if base.activity.name == "ski de randonnée" %>
                    <%= image_tag "ski.png" %>

                  <% elsif base.activity.name == "alpinisme" %>
                    <%= image_tag "alpi.png" %>
                  <% elsif base.activity.name == "escalade" %>
                    <%= image_tag "escalade.png" %>
                  <% end %>
                </div>
                <div class="card-stacked">
                  <div class="card-content" data-coords="<%= { ori_lat: @trip.coord_lat, ori_long: @trip.coord_long, desti_lat: base.basecamp.coord_lat, desti_long: base.basecamp.coord_long }.to_json %>">
                    <h4><%= base.activity.name.capitalize.split(" ")[0] %></h4>
                    <p><strong><%= base.nb_itineraries %></strong> itinéraires</p>
                    <br>
                    <p id="driving-time"></p>
                    <br>

                    <% if base.basecamp.mountain_range.max_risk > 2 %>
                      <p><i class="fas fa-exclamation-triangle"></i> Risque d'avalanche (<%= base.basecamp.mountain_range.max_risk %>)</p>
                      <br>
                    <% end %>

                    <p><img src="<%= "http:" + base.basecamp.weather.forecast[0]["day"]["condition"]["icon"].to_s %>" style="width: 32px; height: 32px;"> <%= base.basecamp.weather.forecast[0]["day"]["avgtemp_c"].to_s.gsub(".", ",") %>°C</p>
                  </div>
                  <div class="card-action">
                    <div class="left-align">
                      <%= link_to "Explorer", trip_basecamps_activity_path(@trip, base), class: "waves-effect waves-light btn" %>
                      <button class="waves-effect waves-light btn secondary"><i class="fas fa-envelope"></i></button>
                    </div>

                  </div>
                </div>
              </div>
            </div>

          <% end %>
          </div>
        </div>
        <div id="map-ba">
          <div class="slide-container" id="content-map">
            <%= render partial: "mapbox" %>
          </div>
        </div>


    </div>
  </div>






</div>

