<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>

{% include "SiteHeader" %}
<style type="text/css">
    * html #content_left {
      background: none;
    filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod=scale, src='{{images_path}}/north_content.png' );
    }
</style>

</head>

<body>

	<div id="wrap">

    <div id="content_sub">

      <div id="header">

          <div id="company_name" class="clearfix">
             {% if editmode %}{% editable site.header %}{% else %}<a href="{{ site.root_item.url }}">{% editable site.header %}</a>{% endif %}
          </div> <!-- //company-name -->

{% include "Mainmenu" %}

          <div class="clearer"></div>
</div>
<div id="cont_front">

{% include "Submenu" %}

{% include "Langmenu" %}
          <div class="clearer"></div>
      </div> <!-- //header -->

    </div> <!-- /content_sub-->

    <div id="darkcontent">
        <div id="darkcontent_wrap">
      <div id="darkcontent_inner">

              <h1 class="heading">{{page.title}}</h1>

      </div> <!-- //darkcontent_inner -->

{% include "Search" %}
        </div>
    </div> <!-- //darkcontent -->

    <div id="content">

      <div id="content_left">
        <div id="content_left_inner" class="clearfix" data-search-indexing-allowed="true">
       {% content %}
        </div>
      </div> <!-- //content_left -->

{% include "News" %}

      <div class="clearer"></div>

    </div> <!-- //content -->

{% include "Footer" %}

  </div> <!-- //wrap -->
  {% include "JS" %}
</body>
</html>
