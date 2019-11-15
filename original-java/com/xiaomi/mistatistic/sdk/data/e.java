package com.xiaomi.mistatistic.sdk.data;

import java.util.Map;

/* compiled from: CustomIncrementalEvent */
public class e extends f {
    public e(String str, String str2) {
        this(str, str2, null);
    }

    public e(String str, String str2, Map<String, String> map) {
        super(str, str2, 1, map);
    }

    public String a() {
        return "event";
    }
}
