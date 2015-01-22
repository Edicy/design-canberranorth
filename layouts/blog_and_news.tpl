<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="{{ page.language_code }}">

<head>

{% include "SiteHeader" %}
{{ blog.rss_link }}

	<style type="text/css">

   * html #content_left {
      background-image: none;
     filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod=scale, src='{{images_path}}/north_content.png');
    }

  </style>

</head>

<body id="blogbody">

	<div id="wrap">

    <div id="content_sub">

      <div id="header">

          <div id="company_name" class="clearfix">
             {% if editmode %}{% editable site.header %}{% else %}<a href="{{ site.root_item.url }}">{% editable site.header %}</a>{% endif %}
          </div> <!-- //company-name -->

{% include "Mainmenu" %}

          <div class="clearer"></div>
</div>
<div id="cont_front" class="clearfix">

{% include "Submenu" %}

{% include "Langmenu" %}
          <div class="clearer"></div>
      </div> <!-- //header -->

    </div> <!-- /content_sub-->

    <div id="darkcontent">
        <div id="darkcontent_wrap">
      <div id="darkcontent_inner">
        <h1 class="heading">{{ page.title }}</h1>
      </div> <!-- //darkcontent_inner -->

{% include "Search" %}
        </div>
    </div> <!-- //darkcontent -->

    <div id="content">

      <div id="content_left" class="clearfix">
        {% if tags %}
            <div class="blog tagged-list-header">
                <div class="header-tag-icon"></div>
                {% if tags == empty %}
                    {{ "no_posts_tagged" | lc }}
                {% else %}
                    {{ "posts_tagged" | lc }} '{{ tags | sort:"name" | map:"name" | join:"', '"}}'.
                {% endif %}
            </div>
        {% endif %}
        {% addbutton class="add-article" %}

        {% for article in articles %}
        <div class="blog">
          <table>
            <tr>
              <td class="blog_datebox">
                <div class="blog_date">
                  <div class="blog_date_inner">
                    {{ article.created_at | format_date:"%d" }}
                    <div class="blog_date_month">{{ article.created_at | format_date:"%b" }}</div>
                  </div> <!-- //blog_date_inner -->
                </div> <!-- //blog_date -->
              </td>
              <td class="clearfix">
                <a href="{{ article.url }}" class="blog_header">{{ article.title }}</a><br />
                <span class="blog_autor">{{ "author" |lc }}: {{ article.author.name }}</span><br />
                {{ article.excerpt }}<br /> <a href="{{ article.url }}">{{ "read_more" | lc }}</a>, <a href="{{ article.url }}#comments">{{ "comments_for_count" | lc }}: {{ article.comments_count }}</a>
              </td>
            </tr>
          </table>
        </div> <!-- //blog -->
  {% endfor %}

      </div> <!-- //content_left -->

{% include "News" %}

      <div class="clearer"></div>
{% include "Footer" %}
      <div class="clearer"></div>
    </div> <!-- //content -->


  </div> <!-- //wrap -->
  {% include "JS" %}
</body>
</html>
