<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="{{ page.language_code }}">

<head>

{% include "SiteHeader" %}
  <style type="text/css">
    * html #front #cont_front {
      background: none;
    filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod=crop, src='{{images_path}}/flower.png');
    }
    * html #langmenu {
      position: relative;
    }
    * html #darkcontent { height: 100px; }
  </style>
</head>

<body id="front">

	<div id="wrap">

    <div id="content_front">

      <div id="header">

          <div id="company_name" class="clearfix">
            {% if editmode %}{% editable site.header %}{% else %}<a href="{{ site.root_item.url }}">{% editable site.header %}</a>{% endif %}
          </div> <!-- //company-name -->

{% include "Mainmenu" %}
          <div class="clearer"></div>
          </div>
<div id="cont_front" class="clearfix">

{% include "Langmenu" %}

          <div id="slogan">

            <div id="slogan2" class="clearfix" data-search-indexing-allowed="true">
              {% content name="slogan" %}
            </div><!-- //slogan2 -->

          </div> <!-- //slogan -->
          <div class="clearer"></div>
      </div> <!-- //header -->
    </div> <!-- /content_front-->

    <div id="darkcontent">
<div id="darkcontent_wrap">

      <div id="darkcontent_inner" class="clearfix" data-search-indexing-allowed="true">
        {% content %}
      </div> <!-- //darkcontent_inner -->

{% include "Search" %}
<div class="clearer"></div>
</div>

    </div> <!-- //darkcontent -->

{% include "Footer" %}

  </div> <!-- //wrap -->
  {% include "JS" %}
</body>
</html>
