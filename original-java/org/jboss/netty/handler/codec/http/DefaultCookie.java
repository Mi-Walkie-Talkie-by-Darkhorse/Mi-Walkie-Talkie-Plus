package org.jboss.netty.handler.codec.http;

import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;
import org.apache.http.cookie.ClientCookie;

public class DefaultCookie implements Cookie {
    private String comment;
    private String commentUrl;
    private boolean discard;
    private String domain;
    private boolean httpOnly;
    private int maxAge = Integer.MIN_VALUE;
    private final String name;
    private String path;
    private Set<Integer> ports = Collections.emptySet();
    private boolean secure;
    private Set<Integer> unmodifiablePorts = this.ports;
    private String value;
    private int version;

    public DefaultCookie(String str, String str2) {
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            throw new IllegalArgumentException("empty name");
        }
        int i = 0;
        while (i < trim.length()) {
            char charAt = trim.charAt(i);
            if (charAt > 127) {
                throw new IllegalArgumentException("name contains non-ascii character: " + trim);
            }
            switch (charAt) {
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case ' ':
                case ',':
                case ';':
                case '=':
                    throw new IllegalArgumentException("name contains one of the following prohibited characters: =,; \\t\\r\\n\\v\\f: " + trim);
                default:
                    i++;
            }
        }
        if (trim.charAt(0) == '$') {
            throw new IllegalArgumentException("name starting with '$' not allowed: " + trim);
        }
        this.name = trim;
        setValue(str2);
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        if (str == null) {
            throw new NullPointerException("value");
        }
        this.value = str;
    }

    public String getDomain() {
        return this.domain;
    }

    public void setDomain(String str) {
        this.domain = validateValue(ClientCookie.DOMAIN_ATTR, str);
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String str) {
        this.path = validateValue(ClientCookie.PATH_ATTR, str);
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String str) {
        this.comment = validateValue(ClientCookie.COMMENT_ATTR, str);
    }

    public String getCommentUrl() {
        return this.commentUrl;
    }

    public void setCommentUrl(String str) {
        this.commentUrl = validateValue("commentUrl", str);
    }

    public boolean isDiscard() {
        return this.discard;
    }

    public void setDiscard(boolean z) {
        this.discard = z;
    }

    public Set<Integer> getPorts() {
        if (this.unmodifiablePorts == null) {
            this.unmodifiablePorts = Collections.unmodifiableSet(this.ports);
        }
        return this.unmodifiablePorts;
    }

    public void setPorts(int... iArr) {
        if (iArr == null) {
            throw new NullPointerException("ports");
        }
        int[] iArr2 = (int[]) iArr.clone();
        if (iArr2.length == 0) {
            Set<Integer> emptySet = Collections.emptySet();
            this.ports = emptySet;
            this.unmodifiablePorts = emptySet;
            return;
        }
        TreeSet treeSet = new TreeSet();
        for (int i : iArr2) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("port out of range: " + i);
            }
            treeSet.add(Integer.valueOf(i));
        }
        this.ports = treeSet;
        this.unmodifiablePorts = null;
    }

    public void setPorts(Iterable<Integer> iterable) {
        TreeSet treeSet = new TreeSet();
        for (Integer intValue : iterable) {
            int intValue2 = intValue.intValue();
            if (intValue2 <= 0 || intValue2 > 65535) {
                throw new IllegalArgumentException("port out of range: " + intValue2);
            }
            treeSet.add(Integer.valueOf(intValue2));
        }
        if (treeSet.isEmpty()) {
            Set<Integer> emptySet = Collections.emptySet();
            this.ports = emptySet;
            this.unmodifiablePorts = emptySet;
            return;
        }
        this.ports = treeSet;
        this.unmodifiablePorts = null;
    }

    public int getMaxAge() {
        return this.maxAge;
    }

    public void setMaxAge(int i) {
        this.maxAge = i;
    }

    public int getVersion() {
        return this.version;
    }

    public void setVersion(int i) {
        this.version = i;
    }

    public boolean isSecure() {
        return this.secure;
    }

    public void setSecure(boolean z) {
        this.secure = z;
    }

    public boolean isHttpOnly() {
        return this.httpOnly;
    }

    public void setHttpOnly(boolean z) {
        this.httpOnly = z;
    }

    public int hashCode() {
        return getName().hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        if (!getName().equalsIgnoreCase(cookie.getName())) {
            return false;
        }
        if (getPath() == null) {
            if (cookie.getPath() != null) {
                return false;
            }
        } else if (cookie.getPath() == null || !getPath().equals(cookie.getPath())) {
            return false;
        }
        if (getDomain() == null) {
            if (cookie.getDomain() == null) {
                return true;
            }
            return false;
        } else if (cookie.getDomain() != null) {
            return getDomain().equalsIgnoreCase(cookie.getDomain());
        } else {
            return false;
        }
    }

    public int compareTo(Cookie cookie) {
        int compareToIgnoreCase = getName().compareToIgnoreCase(cookie.getName());
        if (compareToIgnoreCase != 0) {
            return compareToIgnoreCase;
        }
        if (getPath() == null) {
            if (cookie.getPath() != null) {
                return -1;
            }
        } else if (cookie.getPath() == null) {
            return 1;
        } else {
            int compareTo = getPath().compareTo(cookie.getPath());
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (getDomain() == null) {
            if (cookie.getDomain() != null) {
                return -1;
            }
            return 0;
        } else if (cookie.getDomain() == null) {
            return 1;
        } else {
            return getDomain().compareToIgnoreCase(cookie.getDomain());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getName());
        sb.append('=');
        sb.append(getValue());
        if (getDomain() != null) {
            sb.append(", domain=");
            sb.append(getDomain());
        }
        if (getPath() != null) {
            sb.append(", path=");
            sb.append(getPath());
        }
        if (getComment() != null) {
            sb.append(", comment=");
            sb.append(getComment());
        }
        if (getMaxAge() >= 0) {
            sb.append(", maxAge=");
            sb.append(getMaxAge());
            sb.append('s');
        }
        if (isSecure()) {
            sb.append(", secure");
        }
        if (isHttpOnly()) {
            sb.append(", HTTPOnly");
        }
        return sb.toString();
    }

    private static String validateValue(String str, String str2) {
        if (str2 == null) {
            return null;
        }
        String trim = str2.trim();
        if (trim.length() == 0) {
            return null;
        }
        int i = 0;
        while (i < trim.length()) {
            switch (trim.charAt(i)) {
                case 10:
                case 11:
                case 12:
                case 13:
                case ';':
                    throw new IllegalArgumentException(str + " contains one of the following prohibited characters: " + ";\\r\\n\\f\\v (" + trim + ')');
                default:
                    i++;
            }
        }
        return trim;
    }
}
