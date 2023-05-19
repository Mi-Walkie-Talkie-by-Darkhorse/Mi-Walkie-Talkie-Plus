package com.ifengyu.intercom.bean;

import java.io.Serializable;
import java.util.Date;

/* loaded from: classes2.dex */
public class DiscoveryArticleBean implements Serializable {
    private String excerpt;
    private DiscoveryArticleHeaderImageUrl header_image_url;

    /* renamed from: id */
    private int f12117id;
    private DiscoveryArticleMeta meta;
    private String title;
    private int views;

    /* loaded from: classes2.dex */
    public class DiscoveryArticleHeaderImageUrl implements Serializable {
        private String big;
        private String medium;
        private String small;

        public DiscoveryArticleHeaderImageUrl() {
        }

        public String getBig() {
            return this.big;
        }

        public String getMedium() {
            return this.medium;
        }

        public String getSmall() {
            return this.small;
        }

        public void setBig(String str) {
            this.big = str;
        }

        public void setMedium(String str) {
            this.medium = str;
        }

        public void setSmall(String str) {
            this.small = str;
        }

        public String toString() {
            return "DiscoveryArticleHeaderImageUrl{big='" + this.big + "', small='" + this.small + "', medium='" + this.medium + "'}";
        }
    }

    /* loaded from: classes2.dex */
    public class DiscoveryArticleMeta implements Serializable {
        private String detail_url;
        private Date first_published_at;
        private String html_url;
        private String slug;
        private String type;

        public DiscoveryArticleMeta() {
        }

        public String getDetail_url() {
            return this.detail_url;
        }

        public Date getFirst_published_at() {
            return this.first_published_at;
        }

        public String getHtml_url() {
            return this.html_url;
        }

        public String getSlug() {
            return this.slug;
        }

        public String getType() {
            return this.type;
        }

        public void setDetail_url(String str) {
            this.detail_url = str;
        }

        public void setFirst_published_at(Date date) {
            this.first_published_at = date;
        }

        public void setHtml_url(String str) {
            this.html_url = str;
        }

        public void setSlug(String str) {
            this.slug = str;
        }

        public void setType(String str) {
            this.type = str;
        }

        public String toString() {
            return "DiscoveryArticleMeta{type='" + this.type + "', detail_url='" + this.detail_url + "', html_url='" + this.html_url + "', slug='" + this.slug + "', first_published_at=" + this.first_published_at + '}';
        }
    }

    public String getExcerpt() {
        return this.excerpt;
    }

    public DiscoveryArticleHeaderImageUrl getHeader_image_url() {
        return this.header_image_url;
    }

    public int getId() {
        return this.f12117id;
    }

    public DiscoveryArticleMeta getMeta() {
        return this.meta;
    }

    public String getTitle() {
        return this.title;
    }

    public int getViews() {
        return this.views;
    }

    public void setExcerpt(String str) {
        this.excerpt = str;
    }

    public void setHeader_image_url(DiscoveryArticleHeaderImageUrl discoveryArticleHeaderImageUrl) {
        this.header_image_url = discoveryArticleHeaderImageUrl;
    }

    public void setId(int i) {
        this.f12117id = i;
    }

    public void setMeta(DiscoveryArticleMeta discoveryArticleMeta) {
        this.meta = discoveryArticleMeta;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setViews(int i) {
        this.views = i;
    }

    public String toString() {
        return "DiscoveryArticleBean{id=" + this.f12117id + ", meta=" + this.meta + ", title='" + this.title + "', excerpt='" + this.excerpt + "', header_image_url=" + this.header_image_url + '}';
    }
}
