package com.xiaomi.infra.galaxy.fds.auth.sso;

/* loaded from: classes2.dex */
public class ServiceToken {
    private long developerId;
    private String secret;
    private long timestamp;
    private boolean tsl;
    private long uid;
    private String version;

    /* loaded from: classes2.dex */
    public static class Builder {
        private long developerId;
        private String secret;
        private long timestamp;
        private boolean tsl;
        private long uid;
        private String version;

        public ServiceToken build() {
            ServiceToken serviceToken = new ServiceToken();
            serviceToken.tsl = this.tsl;
            serviceToken.uid = this.uid;
            serviceToken.secret = this.secret;
            serviceToken.timestamp = this.timestamp;
            serviceToken.version = this.version;
            serviceToken.developerId = this.developerId;
            return serviceToken;
        }

        public Builder developerId(long j) {
            this.developerId = j;
            return this;
        }

        public Builder secret(String str) {
            this.secret = str;
            return this;
        }

        public Builder timestamp(long j) {
            this.timestamp = j;
            return this;
        }

        public Builder tsl(boolean z) {
            this.tsl = z;
            return this;
        }

        public Builder uid(long j) {
            this.uid = j;
            return this;
        }

        public Builder version(String str) {
            this.version = str;
            return this;
        }
    }

    public long getDeveloperId() {
        return this.developerId;
    }

    public String getSecret() {
        return this.secret;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public long getUid() {
        return this.uid;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isTsl() {
        return this.tsl;
    }

    public String toString() {
        return "[ServiceToken: tsl=" + this.tsl + ", uid=" + this.uid + ", timestamp=" + this.timestamp + ", version=" + this.version + "]";
    }
}
