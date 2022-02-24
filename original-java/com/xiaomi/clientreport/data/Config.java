package com.xiaomi.clientreport.data;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.push.bs;

/* loaded from: classes2.dex */
public class Config {
    public static final boolean DEFAULT_EVENT_ENCRYPTED = true;
    public static final long DEFAULT_EVENT_UPLOAD_FREQUENCY = 86400;
    public static final boolean DEFAULT_EVENT_UPLOAD_SWITCH_OPEN = false;
    public static final long DEFAULT_MAX_FILE_LENGTH = 1048576;
    public static final long DEFAULT_PERF_UPLOAD_FREQUENCY = 86400;
    public static final boolean DEFAULT_PERF_UPLOAD_SWITCH_OPEN = false;
    private String mAESKey;
    private boolean mEventEncrypted;
    private long mEventUploadFrequency;
    private boolean mEventUploadSwitchOpen;
    private long mMaxFileLength;
    private long mPerfUploadFrequency;
    private boolean mPerfUploadSwitchOpen;

    /* loaded from: classes2.dex */
    public static class Builder {
        private int mEventEncrypted = -1;
        private int mEventUploadSwitchOpen = -1;
        private int mPerfUploadSwitchOpen = -1;
        private String mAESKey = null;
        private long mMaxFileLength = -1;
        private long mEventUploadFrequency = -1;
        private long mPerfUploadFrequency = -1;

        public Config build(Context context) {
            return new Config(context, this);
        }

        public Builder setAESKey(String str) {
            this.mAESKey = str;
            return this;
        }

        public Builder setEventEncrypted(boolean z) {
            this.mEventEncrypted = z ? 1 : 0;
            return this;
        }

        public Builder setEventUploadFrequency(long j) {
            this.mEventUploadFrequency = j;
            return this;
        }

        public Builder setEventUploadSwitchOpen(boolean z) {
            this.mEventUploadSwitchOpen = z ? 1 : 0;
            return this;
        }

        public Builder setMaxFileLength(long j) {
            this.mMaxFileLength = j;
            return this;
        }

        public Builder setPerfUploadFrequency(long j) {
            this.mPerfUploadFrequency = j;
            return this;
        }

        public Builder setPerfUploadSwitchOpen(boolean z) {
            this.mPerfUploadSwitchOpen = z ? 1 : 0;
            return this;
        }
    }

    private Config() {
        this.mEventEncrypted = true;
        this.mEventUploadSwitchOpen = false;
        this.mPerfUploadSwitchOpen = false;
        this.mMaxFileLength = 1048576L;
        this.mEventUploadFrequency = 86400L;
        this.mPerfUploadFrequency = 86400L;
    }

    private Config(Context context, Builder builder) {
        this.mEventEncrypted = true;
        this.mEventUploadSwitchOpen = false;
        this.mPerfUploadSwitchOpen = false;
        long j = 1048576;
        this.mMaxFileLength = 1048576L;
        this.mEventUploadFrequency = 86400L;
        this.mPerfUploadFrequency = 86400L;
        if (builder.mEventEncrypted == 0) {
            this.mEventEncrypted = false;
        } else {
            int unused = builder.mEventEncrypted;
            this.mEventEncrypted = true;
        }
        this.mAESKey = !TextUtils.isEmpty(builder.mAESKey) ? builder.mAESKey : bs.a(context);
        this.mMaxFileLength = builder.mMaxFileLength > -1 ? builder.mMaxFileLength : j;
        if (builder.mEventUploadFrequency > -1) {
            this.mEventUploadFrequency = builder.mEventUploadFrequency;
        } else {
            this.mEventUploadFrequency = 86400L;
        }
        if (builder.mPerfUploadFrequency > -1) {
            this.mPerfUploadFrequency = builder.mPerfUploadFrequency;
        } else {
            this.mPerfUploadFrequency = 86400L;
        }
        if (builder.mEventUploadSwitchOpen != 0 && builder.mEventUploadSwitchOpen == 1) {
            this.mEventUploadSwitchOpen = true;
        } else {
            this.mEventUploadSwitchOpen = false;
        }
        if (builder.mPerfUploadSwitchOpen != 0 && builder.mPerfUploadSwitchOpen == 1) {
            this.mPerfUploadSwitchOpen = true;
        } else {
            this.mPerfUploadSwitchOpen = false;
        }
    }

    public static Config defaultConfig(Context context) {
        return getBuilder().setEventEncrypted(true).setAESKey(bs.a(context)).setMaxFileLength(1048576L).setEventUploadSwitchOpen(false).setEventUploadFrequency(86400L).setPerfUploadSwitchOpen(false).setPerfUploadFrequency(86400L).build(context);
    }

    public static Builder getBuilder() {
        return new Builder();
    }

    public long getEventUploadFrequency() {
        return this.mEventUploadFrequency;
    }

    public long getMaxFileLength() {
        return this.mMaxFileLength;
    }

    public long getPerfUploadFrequency() {
        return this.mPerfUploadFrequency;
    }

    public boolean isEventEncrypted() {
        return this.mEventEncrypted;
    }

    public boolean isEventUploadSwitchOpen() {
        return this.mEventUploadSwitchOpen;
    }

    public boolean isPerfUploadSwitchOpen() {
        return this.mPerfUploadSwitchOpen;
    }

    public String toString() {
        return "Config{mEventEncrypted=" + this.mEventEncrypted + ", mAESKey='" + this.mAESKey + "', mMaxFileLength=" + this.mMaxFileLength + ", mEventUploadSwitchOpen=" + this.mEventUploadSwitchOpen + ", mPerfUploadSwitchOpen=" + this.mPerfUploadSwitchOpen + ", mEventUploadFrequency=" + this.mEventUploadFrequency + ", mPerfUploadFrequency=" + this.mPerfUploadFrequency + '}';
    }
}
