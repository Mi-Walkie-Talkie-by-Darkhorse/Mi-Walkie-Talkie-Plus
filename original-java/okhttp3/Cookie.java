package okhttp3;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpDate;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.http.cookie.ClientCookie;

public final class Cookie {
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;
    private final String name;
    private final String path;
    private final boolean persistent;
    private final boolean secure;
    private final String value;

    public static final class Builder {
        String domain;
        long expiresAt = HttpDate.MAX_DATE;
        boolean hostOnly;
        boolean httpOnly;
        String name;
        String path = "/";
        boolean persistent;
        boolean secure;
        String value;

        public Builder name(String str) {
            if (str == null) {
                throw new NullPointerException("name == null");
            } else if (!str.trim().equals(str)) {
                throw new IllegalArgumentException("name is not trimmed");
            } else {
                this.name = str;
                return this;
            }
        }

        public Builder value(String str) {
            if (str == null) {
                throw new NullPointerException("value == null");
            } else if (!str.trim().equals(str)) {
                throw new IllegalArgumentException("value is not trimmed");
            } else {
                this.value = str;
                return this;
            }
        }

        public Builder expiresAt(long j) {
            long j2;
            long j3 = HttpDate.MAX_DATE;
            if (j <= 0) {
                j2 = Long.MIN_VALUE;
            } else {
                j2 = j;
            }
            if (j2 <= HttpDate.MAX_DATE) {
                j3 = j2;
            }
            this.expiresAt = j3;
            this.persistent = true;
            return this;
        }

        public Builder domain(String str) {
            return domain(str, false);
        }

        public Builder hostOnlyDomain(String str) {
            return domain(str, true);
        }

        private Builder domain(String str, boolean z) {
            if (str == null) {
                throw new NullPointerException("domain == null");
            }
            String domainToAscii = Util.domainToAscii(str);
            if (domainToAscii == null) {
                throw new IllegalArgumentException("unexpected domain: " + str);
            }
            this.domain = domainToAscii;
            this.hostOnly = z;
            return this;
        }

        public Builder path(String str) {
            if (!str.startsWith("/")) {
                throw new IllegalArgumentException("path must start with '/'");
            }
            this.path = str;
            return this;
        }

        public Builder secure() {
            this.secure = true;
            return this;
        }

        public Builder httpOnly() {
            this.httpOnly = true;
            return this;
        }

        public Cookie build() {
            return new Cookie(this);
        }
    }

    private Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j;
        this.domain = str3;
        this.path = str4;
        this.secure = z;
        this.httpOnly = z2;
        this.hostOnly = z3;
        this.persistent = z4;
    }

    Cookie(Builder builder) {
        if (builder.name == null) {
            throw new NullPointerException("builder.name == null");
        } else if (builder.value == null) {
            throw new NullPointerException("builder.value == null");
        } else if (builder.domain == null) {
            throw new NullPointerException("builder.domain == null");
        } else {
            this.name = builder.name;
            this.value = builder.value;
            this.expiresAt = builder.expiresAt;
            this.domain = builder.domain;
            this.path = builder.path;
            this.secure = builder.secure;
            this.httpOnly = builder.httpOnly;
            this.persistent = builder.persistent;
            this.hostOnly = builder.hostOnly;
        }
    }

    public String name() {
        return this.name;
    }

    public String value() {
        return this.value;
    }

    public boolean persistent() {
        return this.persistent;
    }

    public long expiresAt() {
        return this.expiresAt;
    }

    public boolean hostOnly() {
        return this.hostOnly;
    }

    public String domain() {
        return this.domain;
    }

    public String path() {
        return this.path;
    }

    public boolean httpOnly() {
        return this.httpOnly;
    }

    public boolean secure() {
        return this.secure;
    }

    public boolean matches(HttpUrl httpUrl) {
        boolean domainMatch;
        if (this.hostOnly) {
            domainMatch = httpUrl.host().equals(this.domain);
        } else {
            domainMatch = domainMatch(httpUrl.host(), this.domain);
        }
        if (!domainMatch || !pathMatch(httpUrl, this.path)) {
            return false;
        }
        if (!this.secure || httpUrl.isHttps()) {
            return true;
        }
        return false;
    }

    private static boolean domainMatch(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        if (!str.endsWith(str2) || str.charAt((str.length() - str2.length()) - 1) != '.' || Util.verifyAsIpAddress(str)) {
            return false;
        }
        return true;
    }

    private static boolean pathMatch(HttpUrl httpUrl, String str) {
        String encodedPath = httpUrl.encodedPath();
        if (encodedPath.equals(str)) {
            return true;
        }
        if (!encodedPath.startsWith(str) || (!str.endsWith("/") && encodedPath.charAt(str.length()) != '/')) {
            return false;
        }
        return true;
    }

    @Nullable
    public static Cookie parse(HttpUrl httpUrl, String str) {
        return parse(System.currentTimeMillis(), httpUrl, str);
    }

    @Nullable
    static Cookie parse(long j, HttpUrl httpUrl, String str) {
        long j2;
        long j3;
        String str2;
        String str3;
        String str4;
        int length = str.length();
        int delimiterOffset = Util.delimiterOffset(str, 0, length, ';');
        int delimiterOffset2 = Util.delimiterOffset(str, 0, delimiterOffset, '=');
        if (delimiterOffset2 == delimiterOffset) {
            return null;
        }
        String trimSubstring = Util.trimSubstring(str, 0, delimiterOffset2);
        if (trimSubstring.isEmpty() || Util.indexOfControlOrNonAscii(trimSubstring) != -1) {
            return null;
        }
        String trimSubstring2 = Util.trimSubstring(str, delimiterOffset2 + 1, delimiterOffset);
        if (Util.indexOfControlOrNonAscii(trimSubstring2) != -1) {
            return null;
        }
        long j4 = HttpDate.MAX_DATE;
        long j5 = -1;
        String str5 = null;
        String str6 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = true;
        boolean z4 = false;
        int i = delimiterOffset + 1;
        while (i < length) {
            int delimiterOffset3 = Util.delimiterOffset(str, i, length, ';');
            int delimiterOffset4 = Util.delimiterOffset(str, i, delimiterOffset3, '=');
            String trimSubstring3 = Util.trimSubstring(str, i, delimiterOffset4);
            if (delimiterOffset4 < delimiterOffset3) {
                str3 = Util.trimSubstring(str, delimiterOffset4 + 1, delimiterOffset3);
            } else {
                str3 = "";
            }
            if (trimSubstring3.equalsIgnoreCase("expires")) {
                try {
                    j4 = parseExpires(str3, 0, str3.length());
                    z4 = true;
                    str4 = str5;
                } catch (IllegalArgumentException e) {
                    str4 = str5;
                }
            } else {
                if (trimSubstring3.equalsIgnoreCase("max-age")) {
                    try {
                        j5 = parseMaxAge(str3);
                        z4 = true;
                        str4 = str5;
                    } catch (NumberFormatException e2) {
                        str4 = str5;
                    }
                } else {
                    if (trimSubstring3.equalsIgnoreCase(ClientCookie.DOMAIN_ATTR)) {
                        try {
                            str4 = parseDomain(str3);
                            z3 = false;
                        } catch (IllegalArgumentException e3) {
                            str4 = str5;
                        }
                    } else {
                        if (trimSubstring3.equalsIgnoreCase(ClientCookie.PATH_ATTR)) {
                            str6 = str3;
                            str4 = str5;
                        } else {
                            if (trimSubstring3.equalsIgnoreCase(ClientCookie.SECURE_ATTR)) {
                                z = true;
                                str4 = str5;
                            } else {
                                if (trimSubstring3.equalsIgnoreCase("httponly")) {
                                    z2 = true;
                                    str4 = str5;
                                } else {
                                    str4 = str5;
                                }
                            }
                        }
                    }
                }
            }
            String str7 = str4;
            i = delimiterOffset3 + 1;
            j4 = j4;
            str5 = str7;
        }
        if (j5 == Long.MIN_VALUE) {
            j2 = Long.MIN_VALUE;
        } else if (j5 != -1) {
            if (j5 <= 9223372036854775L) {
                j3 = j5 * 1000;
            } else {
                j3 = FileTracerConfig.FOREVER;
            }
            j2 = j3 + j;
            if (j2 < j || j2 > HttpDate.MAX_DATE) {
                j2 = HttpDate.MAX_DATE;
            }
        } else {
            j2 = j4;
        }
        String host = httpUrl.host();
        if (str5 == null) {
            str5 = host;
        } else if (!domainMatch(host, str5)) {
            return null;
        }
        if (host.length() != str5.length() && PublicSuffixDatabase.get().getEffectiveTldPlusOne(str5) == null) {
            return null;
        }
        if (str6 == null || !str6.startsWith("/")) {
            String encodedPath = httpUrl.encodedPath();
            int lastIndexOf = encodedPath.lastIndexOf(47);
            str2 = lastIndexOf != 0 ? encodedPath.substring(0, lastIndexOf) : "/";
        } else {
            str2 = str6;
        }
        return new Cookie(trimSubstring, trimSubstring2, j2, str5, str2, z, z2, z3, z4);
    }

    private static long parseExpires(String str, int i, int i2) {
        int dateCharacterOffset = dateCharacterOffset(str, i, i2, false);
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        Matcher matcher = TIME_PATTERN.matcher(str);
        while (dateCharacterOffset < i2) {
            int dateCharacterOffset2 = dateCharacterOffset(str, dateCharacterOffset + 1, i2, true);
            matcher.region(dateCharacterOffset, dateCharacterOffset2);
            if (i3 == -1 && matcher.usePattern(TIME_PATTERN).matches()) {
                i3 = Integer.parseInt(matcher.group(1));
                i4 = Integer.parseInt(matcher.group(2));
                i5 = Integer.parseInt(matcher.group(3));
            } else if (i6 == -1 && matcher.usePattern(DAY_OF_MONTH_PATTERN).matches()) {
                i6 = Integer.parseInt(matcher.group(1));
            } else if (i7 == -1 && matcher.usePattern(MONTH_PATTERN).matches()) {
                i7 = MONTH_PATTERN.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
            } else if (i8 == -1 && matcher.usePattern(YEAR_PATTERN).matches()) {
                i8 = Integer.parseInt(matcher.group(1));
            }
            dateCharacterOffset = dateCharacterOffset(str, dateCharacterOffset2 + 1, i2, false);
        }
        if (i8 >= 70 && i8 <= 99) {
            i8 += 1900;
        }
        if (i8 >= 0 && i8 <= 69) {
            i8 += 2000;
        }
        if (i8 < 1601) {
            throw new IllegalArgumentException();
        } else if (i7 == -1) {
            throw new IllegalArgumentException();
        } else if (i6 < 1 || i6 > 31) {
            throw new IllegalArgumentException();
        } else if (i3 < 0 || i3 > 23) {
            throw new IllegalArgumentException();
        } else if (i4 < 0 || i4 > 59) {
            throw new IllegalArgumentException();
        } else if (i5 < 0 || i5 > 59) {
            throw new IllegalArgumentException();
        } else {
            GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i8);
            gregorianCalendar.set(2, i7 - 1);
            gregorianCalendar.set(5, i6);
            gregorianCalendar.set(11, i3);
            gregorianCalendar.set(12, i4);
            gregorianCalendar.set(13, i5);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
    }

    private static int dateCharacterOffset(String str, int i, int i2, boolean z) {
        boolean z2;
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            boolean z3 = (charAt < ' ' && charAt != 9) || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'));
            if (!z) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z3 == z2) {
                return i3;
            }
        }
        return i2;
    }

    private static long parseMaxAge(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong <= 0) {
                return Long.MIN_VALUE;
            }
            return parseLong;
        } catch (NumberFormatException e) {
            if (!str.matches("-?\\d+")) {
                throw e;
            } else if (!str.startsWith("-")) {
                return FileTracerConfig.FOREVER;
            } else {
                return Long.MIN_VALUE;
            }
        }
    }

    private static String parseDomain(String str) {
        if (str.endsWith(".")) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        String domainToAscii = Util.domainToAscii(str);
        if (domainToAscii != null) {
            return domainToAscii;
        }
        throw new IllegalArgumentException();
    }

    public static List<Cookie> parseAll(HttpUrl httpUrl, Headers headers) {
        List list;
        List values = headers.values("Set-Cookie");
        List list2 = null;
        int size = values.size();
        for (int i = 0; i < size; i++) {
            Cookie parse = parse(httpUrl, (String) values.get(i));
            if (parse != null) {
                if (list2 == null) {
                    list = new ArrayList();
                } else {
                    list = list2;
                }
                list.add(parse);
                list2 = list;
            }
        }
        if (list2 != null) {
            return Collections.unmodifiableList(list2);
        }
        return Collections.emptyList();
    }

    public String toString() {
        return toString(false);
    }

    /* access modifiers changed from: 0000 */
    public String toString(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append('=');
        sb.append(this.value);
        if (this.persistent) {
            if (this.expiresAt == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=").append(HttpDate.format(new Date(this.expiresAt)));
            }
        }
        if (!this.hostOnly) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.domain);
        }
        sb.append("; path=").append(this.path);
        if (this.secure) {
            sb.append("; secure");
        }
        if (this.httpOnly) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        if (cookie.name.equals(this.name) && cookie.value.equals(this.value) && cookie.domain.equals(this.domain) && cookie.path.equals(this.path) && cookie.expiresAt == this.expiresAt && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int hashCode = (((((((((this.name.hashCode() + 527) * 31) + this.value.hashCode()) * 31) + this.domain.hashCode()) * 31) + this.path.hashCode()) * 31) + ((int) (this.expiresAt ^ (this.expiresAt >>> 32)))) * 31;
        if (this.secure) {
            i = 0;
        } else {
            i = 1;
        }
        int i5 = (i + hashCode) * 31;
        if (this.httpOnly) {
            i2 = 0;
        } else {
            i2 = 1;
        }
        int i6 = (i2 + i5) * 31;
        if (this.persistent) {
            i3 = 0;
        } else {
            i3 = 1;
        }
        int i7 = (i3 + i6) * 31;
        if (!this.hostOnly) {
            i4 = 1;
        }
        return i7 + i4;
    }
}
