<article itemscope itemtype="http://schema.org/Article" class="page__mini-article">
    <div class="mini-article__cover">
        {% if not post.cover %}
            <img itemprop="image" src="{{ get_setting('default_cover') }}" alt="{{ post.title }}"/>
        {% endif %}
        {% if post.cover %}
            <img itemprop="image" src="{{ post.cover }}" alt="{{ post.title }}"/>
        {% endif %}
         {#
        <div itemprop="datePublished" content="{{ data_xml(post.date || post.update) }}" class="mini-article__date">
            <span class="date__day">{{ date(post.date || post.update, 'D') }}</span>
            {% if config.language == 'zh-cn' %}
                <span class="date__month">{{ date(post.date || post.update, 'MMMM') }}</span>
            {% else %}
                <span class="date__month">{{ date(post.date || post.update, 'MMM') }}</span>
            {% endif %}
        </div>
        <a itemprop="url" class="iconfont icon-enter" href="{{ url_for(post.path) }}"></a>
         #}
    </div>
    <div class="mini-article__info">
        <h3 itemprop="name" class="mini-article__title">
        {{ post.title }}
        {#
            <a itemprop="url" href="{{ url_for(post.path) }}" title="{{ post.title }}">{{ post.title }}</a>
        #}    
        </h3>
        {#
        <p class="mini-article__author">by 
            {% if Array.isArray(post.author) %}
                {% for user in post.author %}
                    <span class="author__item" itemprop="author" itemscope itemtype="http://schema.org/Person">
                        <a itemprop="url" href="{{ user.link }}" target="_blank">
                            <span itemprop="name">{{ titlecase(user.name || user.nick) }}</span>
                        </a>
                    </span>
                {% endfor %}
            {% else %}
                <span itemprop="author" itemscope itemtype="http://schema.org/Person">
                    <a itemprop="url" href="{{ post.author.link }}" target="_blank">
                        <span itemprop="name">{{ titlecase(post.author.name || post.author.nick) }}</span>
                    </a>
                </span>
            {% endif %}
        </p>
        #}
        <p itemprop="articleSection" class="min-article__desc">
            {{ post.subtitle }}
        </p>
        <ul>
            {% if post.site_url %}
            <li class="site_url"><svg t="1570766372962" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="6325" width="16" height="16"><path d="M841.142857 566.857143V841.142857c0 20.004571-16.566857 36.571429-36.571428 36.571429h-219.428572v-219.428572h-146.285714v219.428572H219.428571c-20.004571 0-36.571429-16.566857-36.571428-36.571429v-274.285714c0-1.133714 0.585143-2.304 0.585143-3.437714L512 292.571429l328.557714 270.848c0.585143 1.133714 0.585143 2.304 0.585143 3.437714z m127.414857-39.424l-35.437714 42.276571a19.017143 19.017143 0 0 1-11.995429 6.290286h-1.718857a17.92 17.92 0 0 1-11.995428-3.986286L511.963429 242.285714 116.516571 572.013714a19.419429 19.419429 0 0 1-13.714285 3.986286 19.017143 19.017143 0 0 1-11.995429-6.290286l-35.437714-42.276571a18.651429 18.651429 0 0 1 2.304-25.709714L468.516571 159.451429c23.990857-20.004571 62.866286-20.004571 86.857143 0l139.446857 116.553142V164.571429c0-10.276571 8.009143-18.285714 18.285715-18.285715h109.714285c10.276571 0 18.285714 8.009143 18.285715 18.285715v233.142857l125.147428 104.009143c7.424 6.290286 8.557714 18.285714 2.304 25.709714z" fill="" p-id="6326"></path></svg><a href="{{ post.site_url }}" target="_blank">{{ post.site_url }}</a></li>
            {% endif %}
            {% if post.source_url %}
            <li class="source_url"><svg t="1570766754135" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="13356" width="16" height="16"><path d="M880 112H144c-17.7 0-32 14.3-32 32v736c0 17.7 14.3 32 32 32h736c17.7 0 32-14.3 32-32V144c0-17.7-14.3-32-32-32zM513.1 518.1l-192 161c-5.2 4.4-13.1 0.7-13.1-6.1v-62.7c0-2.3 1.1-4.6 2.9-6.1L420.7 512l-109.8-92.2c-1.9-1.5-2.9-3.7-2.9-6.1V351c0-6.8 7.9-10.5 13.1-6.1l192 160.9c3.9 3.2 3.9 9.1 0 12.3zM716 673c0 4.4-3.4 8-7.5 8h-185c-4.1 0-7.5-3.6-7.5-8v-48c0-4.4 3.4-8 7.5-8h185c4.1 0 7.5 3.6 7.5 8v48z" p-id="13357"></path></svg><a href="{{ post.source_url }}" target="_blank">{{ post.source_url }}</a></li>
            {% endif %}
        </ul>
        <div class="min-article__tags">
            <i class="iconfont icon-tab"></i>
            <ul class="tags__list clearfix">
                {% for tag in post.tags %}
                    <li class="tags__item">
                        <a href="{{ url_for(tag.path) }}">{{ tag.name }}</a>
                    </li>
                {% endfor %}
            </ul>
        </div>
    </div>
</article>
