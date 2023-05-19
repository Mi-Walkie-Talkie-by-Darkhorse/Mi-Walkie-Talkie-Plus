package com.xiaomi.infra.galaxy.fds.result;

import com.huawei.hms.framework.common.ContainerUtils;
import com.xiaomi.infra.galaxy.fds.Common;
import java.net.URI;
import java.net.URISyntaxException;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
/* loaded from: classes2.dex */
public class PutObjectResult {
    private String accessKeyId;
    private String bucketName;
    private long expires;
    private String objectName;
    private String signature;

    private static String trimTailingSlash(String str) {
        return (str == null || str.isEmpty() || str.charAt(str.length() + (-1)) != '/') ? str : str.substring(0, str.length() - 1);
    }

    public String getAbsolutePreSignedUri() throws URISyntaxException {
        return getAbsolutePreSignedUri(Common.DEFAULT_FDS_SERVICE_BASE_URI);
    }

    public String getAccessKeyId() {
        return this.accessKeyId;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getCdnPreSignedUri() throws URISyntaxException {
        return getCdnPreSignedUri(Common.DEFAULT_CDN_SERVICE_URI);
    }

    public long getExpires() {
        return this.expires;
    }

    public String getObjectName() {
        return this.objectName;
    }

    public String getRelativePreSignedUri() throws URISyntaxException {
        return new URI(null, null, null, -1, "/" + this.bucketName + "/" + this.objectName, "GalaxyAccessKeyId=" + this.accessKeyId + ContainerUtils.FIELD_DELIMITER + "Expires" + ContainerUtils.KEY_VALUE_DELIMITER + this.expires + ContainerUtils.FIELD_DELIMITER + "Signature" + ContainerUtils.KEY_VALUE_DELIMITER + this.signature, null).toString();
    }

    public String getSignature() {
        return this.signature;
    }

    public void setAccessKeyId(String str) {
        this.accessKeyId = str;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setExpires(long j) {
        this.expires = j;
    }

    public void setObjectName(String str) {
        this.objectName = str;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public String getAbsolutePreSignedUri(String str) throws URISyntaxException {
        return trimTailingSlash(str) + getRelativePreSignedUri();
    }

    public String getCdnPreSignedUri(String str) throws URISyntaxException {
        return trimTailingSlash(str) + getRelativePreSignedUri();
    }
}
