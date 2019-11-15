package com.sina.weibo.sdk.statistic;

import java.util.Map;

/* compiled from: EventLog */
class b extends f {
    private String d;
    private Map<String, String> e;

    public b(String str, String str2, Map<String, String> map) {
        super(str);
        this.d = str2;
        this.e = map;
    }

    public b() {
    }

    public String c() {
        return this.d;
    }

    public Map<String, String> d() {
        return this.e;
    }
}
