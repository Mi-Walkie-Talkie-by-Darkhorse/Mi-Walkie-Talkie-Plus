package okhttp3;

import javax.annotation.Nullable;

public final class Challenge {
    private final String realm;
    private final String scheme;

    public Challenge(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("scheme == null");
        } else if (str2 == null) {
            throw new NullPointerException("realm == null");
        } else {
            this.scheme = str;
            this.realm = str2;
        }
    }

    public String scheme() {
        return this.scheme;
    }

    public String realm() {
        return this.realm;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Challenge) && ((Challenge) obj).scheme.equals(this.scheme) && ((Challenge) obj).realm.equals(this.realm);
    }

    public int hashCode() {
        return ((this.realm.hashCode() + 899) * 31) + this.scheme.hashCode();
    }

    public String toString() {
        return this.scheme + " realm=\"" + this.realm + "\"";
    }
}
