package com.xiaomi.infra.galaxy.fds.android.model;

import com.xiaomi.infra.galaxy.fds.android.util.Util;
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.Header;

/* loaded from: classes2.dex */
public class ObjectMetadata {
    private static final Set<String> PREDEFINED_HEADERS;
    private final Map<String, String> userMetadata = new HashMap();
    private final Map<String, String> predefinedMetadata = new HashMap();

    static {
        HashSet hashSet = new HashSet();
        PREDEFINED_HEADERS = hashSet;
        hashSet.add("Last-Modified");
        hashSet.add("Content-MD5");
        hashSet.add("Content-Type");
        hashSet.add("Content-Length");
        hashSet.add("Content-Encoding");
        hashSet.add("Cache-Control");
    }

    private void checkMetadata(String str) {
        boolean startsWith = str.startsWith("x-xiaomi-meta-");
        if (!startsWith) {
            Iterator<String> it2 = PREDEFINED_HEADERS.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (str.equals(it2.next())) {
                    startsWith = true;
                    break;
                }
            }
        }
        if (startsWith) {
            return;
        }
        throw new RuntimeException("Invalid metadata: " + str, null);
    }

    public static ObjectMetadata parseObjectMetadata(Header[] headerArr) {
        ObjectMetadata objectMetadata = new ObjectMetadata();
        for (Header header : headerArr) {
            String name = header.getName();
            String value = header.getValue();
            if (name.startsWith("x-xiaomi-meta-")) {
                objectMetadata.addUserMetadata(name, value);
            } else if (PREDEFINED_HEADERS.contains(name)) {
                objectMetadata.addPredefinedMetadata(name, value);
            }
        }
        return objectMetadata;
    }

    public void addPredefinedMetadata(String str, String str2) {
        checkMetadata(str);
        this.predefinedMetadata.put(str, str2);
    }

    public void addUserMetadata(String str, String str2) {
        checkMetadata(str);
        this.userMetadata.put(str, str2);
    }

    public Map<String, String> getAllMetadata() {
        HashMap hashMap = new HashMap(this.predefinedMetadata);
        hashMap.putAll(this.userMetadata);
        return hashMap;
    }

    public String getCacheControl() {
        return this.predefinedMetadata.get("Cache-Control");
    }

    public String getContentEncoding() {
        return this.predefinedMetadata.get("Content-Encoding");
    }

    public long getContentLength() {
        String str = this.predefinedMetadata.get("Content-Length");
        if (str != null) {
            return Long.parseLong(str);
        }
        return -1L;
    }

    public String getContentMD5() {
        return this.predefinedMetadata.get("Content-MD5");
    }

    public String getContentType() {
        return this.predefinedMetadata.get("Content-Type");
    }

    public Date getLastModified() {
        String str = this.predefinedMetadata.get("Last-Modified");
        if (str != null) {
            try {
                return Util.parseDate(str);
            } catch (ParseException unused) {
            }
        }
        return null;
    }

    public Map<String, String> getUserMetadata() {
        return this.userMetadata;
    }

    public void setCacheControl(String str) {
        this.predefinedMetadata.put("Cache-Control", str);
    }

    public void setContentEncoding(String str) {
        this.predefinedMetadata.put("Content-Encoding", str);
    }

    public void setContentLength(long j) {
        this.predefinedMetadata.put("Content-Length", Long.toString(j));
    }

    public void setContentMD5(String str) {
        this.predefinedMetadata.put("Content-MD5", str);
    }

    public void setContentType(String str) {
        this.predefinedMetadata.put("Content-Type", str);
    }

    public void setLastModified(Date date) {
        this.predefinedMetadata.put("Last-Modified", Util.formatDateString(date));
    }
}
