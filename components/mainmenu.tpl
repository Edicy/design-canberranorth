          <ul id="mainmenu">
{% unless site.root_item.hidden? %}<li><a href="{{ site.root_item.url }}"{% if site.root_item.selected? %} class="active"{% endif %}>{{ site.root_item.title }}</a></li>{% endunless %}
            {% for item in site.visible_menuitems %}
            <li{% unless item.translated? %} class="untranslated"{% endunless %}><a href="{{ item.url }}"{% if item.selected? %} class="active"{% endif %}{% unless item.translated? %} class="fci-editor-menuadd"{% endunless %}>{{ item.title }}</a></li>
            {% endfor %}
              {% if editmode %}<li>{% menubtn site.hidden_menuitems %}</li>
              <li>{% menuadd %}</li>{% endif %} 
          </ul> <!-- //mainmenu -->

              {% for item in site.menuitems_with_hiden %}
                  {% if item.blog? %}{% assign bloglink = item.url %}{% endif %}
              {% endfor %}