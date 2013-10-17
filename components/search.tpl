{% if site.search.enabled %}
<form id="search" action="" class="edys-search">
        <div>
          <input type="text" class="textbox edys-search-input" id="onpage_search" />
          <input type="submit" class="submit" value="{{ "search"|lc }}" />
        </div>
 </form> <!-- //search -->
{% endif %}