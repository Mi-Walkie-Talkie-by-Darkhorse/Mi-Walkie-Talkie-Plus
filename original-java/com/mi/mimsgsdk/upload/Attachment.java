package com.mi.mimsgsdk.upload;

import android.content.Context;
import android.text.TextUtils;
import java.io.Serializable;

public class Attachment implements Serializable {
    public static final int AUTH_TYPE_AVATAR = 1;
    public static final int AUTH_TYPE_DEFAULT = 0;
    public static final int AUTH_TYPE_FEED_BACK = 2;
    public static final String PLAIN_TEXT_MIME_TYPE = "text/plain";
    private static final String TAG = Attachment.class.getName();
    public static final int TYPE_AUDIO = 3;
    public static final int TYPE_IMAGE = 2;
    public static final int TYPE_TEXT = 1;
    public long attId;
    public int authType;
    public int duration;
    private byte[] extData;
    private long extType;
    public long fileSize;
    public String filename;
    private int height;
    public String localPath;
    public String localUri;
    public String mimeType;
    private String objectKey;
    private String resourceId;
    private int size;
    private String text;
    private int type;
    private String url;
    private int width;

    public static boolean isTextMimeType(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str.toLowerCase().trim().startsWith("text/");
        }
        return false;
    }

    public static boolean isVideoMimeType(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str.toLowerCase().trim().startsWith("video/");
        }
        return false;
    }

    public static boolean isAudioMimeType(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str.toLowerCase().trim().startsWith("audio/");
        }
        return false;
    }

    public static boolean isImageMimeType(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str.toLowerCase().trim().startsWith("image/");
        }
        return false;
    }

    public Attachment() {
        this.authType = 0;
    }

    public Attachment(Context context) {
        this.authType = 0;
        this.mimeType = "text/plain";
        this.attId = AttachmentUtils.generateAttachmentId(context);
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public int getDuration() {
        return this.duration;
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    public int getSize() {
        return this.size;
    }

    public void setSize(int i) {
        this.size = i;
    }

    public long getExtType() {
        return this.extType;
    }

    public void setExtType(long j) {
        this.extType = j;
    }

    public byte[] getExtData() {
        return this.extData;
    }

    public void setExtData(byte[] bArr) {
        this.extData = bArr;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public String getLocalUri() {
        return this.localUri;
    }

    public void setLocalUri(String str) {
        this.localUri = str;
    }

    public String getLocalPath() {
        return this.localPath;
    }

    public void setLocalPath(String str) {
        this.localPath = str;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public void setMimeType(String str) {
        this.mimeType = str;
    }

    public String getFileName() {
        return this.filename;
    }

    public void setFileName(String str) {
        this.filename = str;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    public void setFileSize(long j) {
        this.fileSize = j;
    }

    public long getAttId() {
        return this.attId;
    }

    public void setAttId(long j) {
        this.attId = j;
    }

    public String getResourceId() {
        return this.resourceId;
    }

    public void setResourceId(String str) {
        this.resourceId = str;
    }

    public String getObjectKey() {
        return this.objectKey;
    }

    public void setObjectKey(String str) {
        this.objectKey = str;
    }

    public boolean needUpload() {
        return TextUtils.isEmpty(this.resourceId);
    }

    public boolean isLocalPathEmpty() {
        return TextUtils.isEmpty(this.localPath);
    }

    public String getSuffixFromLocalPath() {
        return AttachmentUtils.getSuffixFromFilePath(this.localPath);
    }
}
