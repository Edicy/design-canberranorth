    <div id="footer">
      <div id="footer_inner" class="clearfix">
        {% content name="footer" xpage="true" %}
      </div> <!-- //footer_inner -->
      
      <div id="edicy">
        {% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}
      </div> <!-- //edicy -->
    </div>

