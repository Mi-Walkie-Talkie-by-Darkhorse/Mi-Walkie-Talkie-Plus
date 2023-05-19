package com.xiaomi.infra.galaxy.fds.result;

import com.xiaomi.infra.galaxy.fds.bean.BucketBean;
import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
/* loaded from: classes2.dex */
public class ListAllAuthorizedBucketsResult {
    private List<BucketBean> buckets;

    public ListAllAuthorizedBucketsResult() {
    }

    public List<BucketBean> getBuckets() {
        return this.buckets;
    }

    public void setBuckets(List<BucketBean> list) {
        this.buckets = list;
    }

    public ListAllAuthorizedBucketsResult(List<BucketBean> list) {
        this.buckets = list;
    }
}
