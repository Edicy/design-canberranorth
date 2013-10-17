<div id="content_right">
      {% for article in site.latest_articles limit:1 %}  
        <h1>{{ "latest_news" |lc }}</h1>
        
        <table id="news">{% for article in site.latest_3_articles %}
          <tr>
          <td class="newsdate">{{ article.created_at | format_date:"%d. %B" }}</td>
          <td><a href="{{ article.url }}">{{ article.title }}</a></td>
          </tr>
          {% endfor %}
          <tr>
            <td></td>
            <td id="newslinks"><a href="{{ bloglink }}">{{ "older_news" |lc }}</a>  |  <img src="{{images_path}}/rss.gif?1" style="vertical-align: middle;" alt="RSS" /> <a href="{{ bloglink }}.rss">RSS</a></td>
          </tr>
        </table>
            {% endfor %}
  
  {% content name="sidebar" %}
        
        
      </div> <!-- //content_right -->


