package com.xiaomi.infra.galaxy.fds.result;

import com.xiaomi.infra.galaxy.fds.bean.BucketBean;
import com.xiaomi.infra.galaxy.fds.bean.OwnerBean;
import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
/* loaded from: classes2.dex */
public class ListAllBucketsResult {
    private List<BucketBean> buckets;
    private OwnerBean owner;

    public ListAllBucketsResult() {
    }

    public List<BucketBean> getBuckets() {
        return this.buckets;
    }

    public OwnerBean getOwner() {
        return this.owner;
    }

    public void setBuckets(List<BucketBean> list) {
        this.buckets = list;
    }

    public void setOwner(OwnerBean ownerBean) {
        this.owner = ownerBean;
    }

    public ListAllBucketsResult(OwnerBean ownerBean, List<BucketBean> list) {
        this.owner = ownerBean;
        this.buckets = list;
    }
}
