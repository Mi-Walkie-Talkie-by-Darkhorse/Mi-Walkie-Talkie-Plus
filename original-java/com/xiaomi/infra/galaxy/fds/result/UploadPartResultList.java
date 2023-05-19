package com.xiaomi.infra.galaxy.fds.result;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
/* loaded from: classes2.dex */
public class UploadPartResultList {
    private List<UploadPartResult> uploadPartResultList = new ArrayList();

    public void addUploadPartResult(UploadPartResult uploadPartResult) {
        this.uploadPartResultList.add(uploadPartResult);
    }

    public List<UploadPartResult> getUploadPartResultList() {
        return this.uploadPartResultList;
    }

    public void setUploadPartResultList(List<UploadPartResult> list) {
        this.uploadPartResultList = list;
    }
}
