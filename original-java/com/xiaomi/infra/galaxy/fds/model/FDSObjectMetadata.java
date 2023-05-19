package com.xiaomi.infra.galaxy.fds.model;

import com.google.common.collect.LinkedListMultimap;
import com.xiaomi.infra.galaxy.fds.Common;
import com.xiaomi.infra.galaxy.fds.auth.signature.Utils;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class FDSObjectMetadata {
    public static final String USER_DEFINED_META_PREFIX = "x-xiaomi-meta-";
    private final Map<String, String> metadata = new HashMap();

    /* loaded from: classes2.dex */
    public enum PredefinedMetadata {
        CacheControl(Common.CACHE_CONTROL),
        ContentEncoding(Common.CONTENT_ENCODING),
        ContentLength(Common.CONTENT_LENGTH),
        ContentRange(Common.CONTENT_RANGE),
        LastModified(Common.LAST_MODIFIED),
        ContentMD5(Common.CONTENT_MD5),
        ContentType(Common.CONTENT_TYPE),
        LastChecked(Common.LAST_CHECKED),
        UploadTime(Common.UPLOAD_TIME);
        
        private final String header;

        PredefinedMetadata(String str) {
            this.header = str;
        }

        public String getHeader() {
            return this.header;
        }
    }

    private static void checkMetadata(String str) {
        boolean startsWith = str.startsWith("x-xiaomi-meta-");
        if (!startsWith) {
            PredefinedMetadata[] values = PredefinedMetadata.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (str.equals(values[i].getHeader())) {
                    startsWith = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        if (startsWith) {
            return;
        }
        throw new RuntimeException("Invalid metadata: " + str, null);
    }

    public static FDSObjectMetadata parseObjectMetadata(LinkedListMultimap<String, String> linkedListMultimap) {
        PredefinedMetadata[] values;
        FDSObjectMetadata fDSObjectMetadata = new FDSObjectMetadata();
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : linkedListMultimap.entries()) {
            String lowerCase = entry.getKey().toLowerCase();
            String value = entry.getValue();
            if (!hashMap.containsKey(lowerCase)) {
                hashMap.put(lowerCase, value);
                if (lowerCase.startsWith("x-xiaomi-meta-")) {
                    fDSObjectMetadata.addHeader(lowerCase, value);
                }
            }
        }
        for (PredefinedMetadata predefinedMetadata : PredefinedMetadata.values()) {
            String str = (String) hashMap.get(predefinedMetadata.getHeader());
            if (str != null && !str.isEmpty()) {
                fDSObjectMetadata.addHeader(predefinedMetadata.getHeader(), str);
            }
        }
        return fDSObjectMetadata;
    }

    public void addHeader(String str, String str2) {
        checkMetadata(str);
        this.metadata.put(str, str2);
    }

    public void addUserMetadata(String str, String str2) {
        checkMetadata(str);
        this.metadata.put(str, str2);
    }

    public String getCacheControl() {
        return this.metadata.get(Common.CACHE_CONTROL);
    }

    public String getContentEncoding() {
        return this.metadata.get(Common.CONTENT_ENCODING);
    }

    public long getContentLength() {
        String str = this.metadata.get(Common.CONTENT_LENGTH);
        if (str != null) {
            return Long.parseLong(str);
        }
        return -1L;
    }

    public String getContentMD5() {
        return this.metadata.get(Common.CONTENT_MD5);
    }

    public String getContentRange() {
        return this.metadata.get(Common.CONTENT_RANGE);
    }

    public String getContentType() {
        return this.metadata.get(Common.CONTENT_TYPE);
    }

    public String getLastChecked() {
        return this.metadata.get(Common.LAST_CHECKED);
    }

    public Date getLastModified() {
        String str = this.metadata.get(Common.LAST_MODIFIED);
        if (str != null) {
            return Utils.parseDateTimeFromString(str);
        }
        return null;
    }

    public Map<String, String> getRawMetadata() {
        return Collections.unmodifiableMap(this.metadata);
    }

    public void setCacheControl(String str) {
        this.metadata.put(Common.CACHE_CONTROL, str);
    }

    public void setContentEncoding(String str) {
        this.metadata.put(Common.CONTENT_ENCODING, str);
    }

    public void setContentLength(long j) {
        this.metadata.put(Common.CONTENT_LENGTH, Long.toString(j));
    }

    public void setContentMD5(String str) {
        this.metadata.put(Common.CONTENT_MD5, str);
    }

    public void setContentRange(long j, long j2, long j3) {
        Map<String, String> map = this.metadata;
        map.put(Common.CONTENT_RANGE, "bytes " + j + Constants.ACCEPT_TIME_SEPARATOR_SERVER + j2 + "/" + j3);
    }

    public void setContentType(String str) {
        this.metadata.put(Common.CONTENT_TYPE, str);
    }

    public void setLastChecked(String str) {
        this.metadata.put(Common.LAST_CHECKED, str);
    }

    public void setLastModified(Date date) {
        this.metadata.put(Common.LAST_MODIFIED, Utils.getGMTDatetime(date));
    }

    public void setUserMetadata(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            checkMetadata(entry.getKey());
            this.metadata.put(entry.getKey(), entry.getValue());
        }
    }
}
