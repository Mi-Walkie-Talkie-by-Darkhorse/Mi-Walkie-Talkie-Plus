package com.bumptech.glide.load.b;

import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: LazyHeaders */
public final class j implements h {
    private final Map<String, List<i>> c;
    private volatile Map<String, String> d;

    /* compiled from: LazyHeaders */
    public static final class a {
        private static final String a = b();
        private static final Map<String, List<i>> b;
        private boolean c = true;
        private Map<String, List<i>> d = b;
        private boolean e = true;

        static {
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(a)) {
                hashMap.put("User-Agent", Collections.singletonList(new b(a)));
            }
            b = Collections.unmodifiableMap(hashMap);
        }

        public j a() {
            this.c = true;
            return new j(this.d);
        }

        @VisibleForTesting
        static String b() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i = 0; i < length; i++) {
                char charAt = property.charAt(i);
                if ((charAt > 31 || charAt == 9) && charAt < 127) {
                    sb.append(charAt);
                } else {
                    sb.append('?');
                }
            }
            return sb.toString();
        }
    }

    /* compiled from: LazyHeaders */
    static final class b implements i {
        private final String a;

        b(String str) {
            this.a = str;
        }

        public String a() {
            return this.a;
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.a + '\'' + '}';
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            return this.a.equals(((b) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    j(Map<String, List<i>> map) {
        this.c = Collections.unmodifiableMap(map);
    }

    public Map<String, String> a() {
        if (this.d == null) {
            synchronized (this) {
                if (this.d == null) {
                    this.d = Collections.unmodifiableMap(b());
                }
            }
        }
        return this.d;
    }

    private Map<String, String> b() {
        HashMap hashMap = new HashMap();
        for (Entry entry : this.c.entrySet()) {
            StringBuilder sb = new StringBuilder();
            List list = (List) entry.getValue();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                String a2 = ((i) list.get(i)).a();
                if (!TextUtils.isEmpty(a2)) {
                    sb.append(a2);
                    if (i != list.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            if (!TextUtils.isEmpty(sb.toString())) {
                hashMap.put(entry.getKey(), sb.toString());
            }
        }
        return hashMap;
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.c + '}';
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        return this.c.equals(((j) obj).c);
    }

    public int hashCode() {
        return this.c.hashCode();
    }
}
