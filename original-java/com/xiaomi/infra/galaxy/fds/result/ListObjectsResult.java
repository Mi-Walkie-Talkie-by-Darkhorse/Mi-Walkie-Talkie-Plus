package com.xiaomi.infra.galaxy.fds.result;

import com.xiaomi.infra.galaxy.fds.bean.ObjectBean;
import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
/* loaded from: classes2.dex */
public class ListObjectsResult {
    private List<String> commonPrefixes;
    private String delimiter;
    private String marker;
    private int maxKeys;
    private String name;
    private String nextMarker;
    private List<ObjectBean> objects;
    private String prefix;
    private boolean truncated;

    public List<String> getCommonPrefixes() {
        return this.commonPrefixes;
    }

    public String getDelimiter() {
        return this.delimiter;
    }

    public String getMarker() {
        return this.marker;
    }

    public int getMaxKeys() {
        return this.maxKeys;
    }

    public String getName() {
        return this.name;
    }

    public String getNextMarker() {
        return this.nextMarker;
    }

    public List<ObjectBean> getObjects() {
        return this.objects;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public boolean isTruncated() {
        return this.truncated;
    }

    public void setCommonPrefixes(List<String> list) {
        this.commonPrefixes = list;
    }

    public void setDelimiter(String str) {
        this.delimiter = str;
    }

    public void setMarker(String str) {
        this.marker = str;
    }

    public void setMaxKeys(int i) {
        this.maxKeys = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNextMarker(String str) {
        this.nextMarker = str;
    }

    public void setObjects(List<ObjectBean> list) {
        this.objects = list;
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public void setTruncated(boolean z) {
        this.truncated = z;
    }
}
