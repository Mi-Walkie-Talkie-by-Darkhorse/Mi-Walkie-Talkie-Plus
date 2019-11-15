package com.ifengyu.intercom.bean;

import java.util.List;

public class DiscoverResult {
    public List<DiscoveryArticleBean> items;
    public Meta meta;

    public class Meta {
        public int total_count;

        public Meta() {
        }
    }
}
