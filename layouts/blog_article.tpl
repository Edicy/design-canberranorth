<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">

<head>

{% include "SiteHeader" %}
{{ blog.rss_link }}
<style type="text/css">
    * html #content_left {
      background: none;
    filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod=scale, src='{{images_path}}/north_.png');
    }
</style>

</head>

<body>

	<div id="wrap" class="content-hyphenate">

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
<h1 class="heading">
              {% editable article.title plain="true" %}
</h1>

      </div> <!-- //darkcontent_inner -->

{% include "Search" %}
        </div>
    </div> <!-- //darkcontent -->

    <div id="content">

      <div id="content_left" class="clearfix">


        <div class="blog clearfix">
          <div class="blog_datebox" style="float: left;">
            <div class="blog_date">
              <div class="blog_date_inner">
                {{ article.created_at | format_date:"%d" }}
                <div class="blog_date_month">{{ article.created_at | format_date:"%b" }}</div>
              </div> <!-- //blog_date_inner -->
            </div> <!-- //blog_date -->
          </div>
          <span class="blog_autor">{{ "author" |lc }}: {{ article.author.name }}</span><br />
          <div class="excerpt" data-search-indexing-allowed="true">{% editable article.excerpt %}</div>
          <div class="content-hyphenate" data-search-indexing-allowed="true">{% editable article.body %}</div>
          {% if editmode %}
                <div class="article-tags">
                    <div class="article-tag-icon"></div>
                    {% editable article.tags %}
                </div>
              {% else %}
                {% unless article.tags == empty %}
                    <div class="cfx article-tags">
                        <div class="article-tag-icon"></div>
                        {% for tag in article.tags %}
                            <a href="{{ article.page.url }}/tagged/{{ tag.path }}">{{ tag.name }}</a>{% unless forloop.last %}, {% endunless %}
                        {% endfor %}
                    </div>
                {% endunless %}
            {% endif %}
        </div> <!-- //blog -->

        <div id="blog_comment">
          <div class="hr"><a name="comments"></a><h4>{{ "comments_for_count" |lc }}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span>
</h4></div>

      {% for comment in article.comments %}
      <p class="edy-site-blog-comment">{{ comment.body_html }}
      <br /><span class="data2">{{ comment.author }}, {{ comment.created_at | format_date:"long" }}</span> {% removebutton %}</p>
      <br />
      {% endfor %}
<h4>{{"add_a_comment" |lc }}</h4>
{% unless comment.valid? %}<ul>
{% for error in comment.errors %}
<li>{{ error | lc }}</li>
{% endfor %}
</ul>{% endunless %}
<script type="text/javascript">
function findAncestor(o, tag){

for(tag = tag.toLowerCase(); o = o.parentNode;)

if(o.tagName && o.tagName.toLowerCase() == tag)

return o;

return null;

}
</script>
{% commentform %}
            <table>
                <tr>
                  <td class="first">{{ "name" |lc }}&nbsp;&nbsp;&nbsp;</td>
                  <td colspan="2"><input name="comment[author]" type="text" class="textbox" value="{{ comment.author }}" /></td>
                  <td></td>
                </tr>
                <tr>
                  <td class="first">{{ "email" |lc }}&nbsp;&nbsp;&nbsp;</td>
                  <td colspan="2"><input name="comment[author_email]" type="text" class="textbox" value="{{ comment.author_email }}" /></td>
                  <td></td>
                </tr>
                <tr>
                  <td class="first" style="vertical-align: top;">{{ "comment" |lc }}&nbsp;&nbsp;&nbsp;</td>
                  <td colspan="2"><textarea cols="10" rows="4" name="comment[body]">{{ comment.body }}</textarea></td>
                  <td></td>
                </tr>
                <tr>
                  <td colspan="4" style="text-align: center;"><span class="submit" onclick="findAncestor(this,'form').submit();"><span class="submit2">{{ "submit" |lc }}</span></span></td>
                </tr>

            </table>
{% endcommentform %}
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
