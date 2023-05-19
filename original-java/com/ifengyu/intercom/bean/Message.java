package com.ifengyu.intercom.bean;

import java.util.List;

/* loaded from: classes2.dex */
public class Message {
    public List<Item> items;
    public Meta meta;

    /* loaded from: classes2.dex */
    public class Item {

        /* renamed from: id */
        public int f12118id;
        public Meta meta;
        public String title;

        /* loaded from: classes2.dex */
        public class Meta {
            public String detail_url;
            public String first_published_at;
            public String html_url;
            public String slug;
            public String type;

            public Meta() {
            }

            public String toString() {
                return "Meta{type='" + this.type + "', detail_url='" + this.detail_url + "', html_url='" + this.html_url + "', slug='" + this.slug + "', first_published_at='" + this.first_published_at + "'}";
            }
        }

        public Item() {
        }

        public String toString() {
            return "Item{id=" + this.f12118id + ", title='" + this.title + "', meta=" + this.meta + '}';
        }
    }

    /* loaded from: classes2.dex */
    public class Meta {
        public int total_count;

        public Meta() {
        }

        public String toString() {
            return "Meta{total_count=" + this.total_count + '}';
        }
    }

    public String toString() {
        return "Message{meta=" + this.meta + ", items=" + this.items + '}';
    }
}
