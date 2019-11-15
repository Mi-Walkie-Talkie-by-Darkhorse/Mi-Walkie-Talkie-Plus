package com.loopj.android.http;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public class RequestParams implements Serializable {
    protected final ConcurrentHashMap<String, String> a;
    protected final ConcurrentHashMap<String, Object> b;
    protected final ConcurrentHashMap<String, Object> c;
    protected final ConcurrentHashMap<String, Object> d;
    protected String e;

    public RequestParams() {
        this(null);
    }

    public RequestParams(Map<String, String> map) {
        this.a = new ConcurrentHashMap<>();
        this.b = new ConcurrentHashMap<>();
        this.c = new ConcurrentHashMap<>();
        this.d = new ConcurrentHashMap<>();
        this.e = "UTF-8";
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                a((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    public void a(String str, String str2) {
        if (str != null && str2 != null) {
            this.a.put(str, str2);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Entry entry : this.a.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append((String) entry.getKey());
            sb.append("=");
            sb.append((String) entry.getValue());
        }
        for (Entry entry2 : this.b.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append((String) entry2.getKey());
            sb.append("=");
            sb.append("STREAM");
        }
        for (Entry entry3 : this.c.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append((String) entry3.getKey());
            sb.append("=");
            sb.append("FILE");
        }
        for (BasicNameValuePair basicNameValuePair : a((String) null, (Object) this.d)) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(basicNameValuePair.getName());
            sb.append("=");
            sb.append(basicNameValuePair.getValue());
        }
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public List<BasicNameValuePair> a() {
        LinkedList linkedList = new LinkedList();
        for (Entry entry : this.a.entrySet()) {
            linkedList.add(new BasicNameValuePair((String) entry.getKey(), (String) entry.getValue()));
        }
        linkedList.addAll(a((String) null, (Object) this.d));
        return linkedList;
    }

    private List<BasicNameValuePair> a(String str, Object obj) {
        String format;
        LinkedList linkedList = new LinkedList();
        if (obj instanceof Map) {
            Map map = (Map) obj;
            ArrayList arrayList = new ArrayList(map.keySet());
            if (arrayList.size() > 0 && (arrayList.get(0) instanceof Comparable)) {
                Collections.sort(arrayList);
            }
            for (Object next : arrayList) {
                if (next instanceof String) {
                    Object obj2 = map.get(next);
                    if (obj2 != null) {
                        if (str == null) {
                            format = (String) next;
                        } else {
                            format = String.format("%s[%s]", new Object[]{str, next});
                        }
                        linkedList.addAll(a(format, obj2));
                    }
                }
            }
        } else if (obj instanceof List) {
            List list = (List) obj;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                linkedList.addAll(a(String.format("%s[%d]", new Object[]{str, Integer.valueOf(i)}), list.get(i)));
            }
        } else if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            int length = objArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                linkedList.addAll(a(String.format("%s[%d]", new Object[]{str, Integer.valueOf(i2)}), objArr[i2]));
            }
        } else if (obj instanceof Set) {
            for (Object a2 : (Set) obj) {
                linkedList.addAll(a(str, a2));
            }
        } else {
            linkedList.add(new BasicNameValuePair(str, obj.toString()));
        }
        return linkedList;
    }

    /* access modifiers changed from: protected */
    public String b() {
        return URLEncodedUtils.format(a(), this.e);
    }
}
