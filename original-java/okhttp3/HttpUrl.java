package okhttp3;

import com.mi.milinkforgame.sdk.base.os.Http;
import com.mi.milinkforgame.sdk.data.Const.ServerPort;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.Buffer;
import org.apache.http.HttpHost;

public final class HttpUrl {
    static final String FORM_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";
    static final String FRAGMENT_ENCODE_SET = "";
    static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";
    static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";
    static final String QUERY_COMPONENT_ENCODE_SET = " \"'<>#&=";
    static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";
    static final String QUERY_ENCODE_SET = " \"'<>#";
    static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    @Nullable
    private final String fragment;
    final String host;
    private final String password;
    private final List<String> pathSegments;
    final int port;
    @Nullable
    private final List<String> queryNamesAndValues;
    final String scheme;
    private final String url;
    private final String username;

    public static final class Builder {
        @Nullable
        String encodedFragment;
        String encodedPassword = "";
        final List<String> encodedPathSegments = new ArrayList();
        @Nullable
        List<String> encodedQueryNamesAndValues;
        String encodedUsername = "";
        @Nullable
        String host;
        int port = -1;
        @Nullable
        String scheme;

        enum ParseResult {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public Builder() {
            this.encodedPathSegments.add("");
        }

        public Builder scheme(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if (str.equalsIgnoreCase(HttpHost.DEFAULT_SCHEME_NAME)) {
                this.scheme = HttpHost.DEFAULT_SCHEME_NAME;
            } else if (str.equalsIgnoreCase("https")) {
                this.scheme = "https";
            } else {
                throw new IllegalArgumentException("unexpected scheme: " + str);
            }
            return this;
        }

        public Builder username(String str) {
            if (str == null) {
                throw new NullPointerException("username == null");
            }
            this.encodedUsername = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public Builder encodedUsername(String str) {
            if (str == null) {
                throw new NullPointerException("encodedUsername == null");
            }
            this.encodedUsername = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
            return this;
        }

        public Builder password(String str) {
            if (str == null) {
                throw new NullPointerException("password == null");
            }
            this.encodedPassword = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public Builder encodedPassword(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPassword == null");
            }
            this.encodedPassword = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
            return this;
        }

        public Builder host(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String canonicalizeHost = canonicalizeHost(str, 0, str.length());
            if (canonicalizeHost == null) {
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            this.host = canonicalizeHost;
            return this;
        }

        public Builder port(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("unexpected port: " + i);
            }
            this.port = i;
            return this;
        }

        /* access modifiers changed from: 0000 */
        public int effectivePort() {
            return this.port != -1 ? this.port : HttpUrl.defaultPort(this.scheme);
        }

        public Builder addPathSegment(String str) {
            if (str == null) {
                throw new NullPointerException("pathSegment == null");
            }
            push(str, 0, str.length(), false, false);
            return this;
        }

        public Builder addPathSegments(String str) {
            if (str != null) {
                return addPathSegments(str, false);
            }
            throw new NullPointerException("pathSegments == null");
        }

        public Builder addEncodedPathSegment(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPathSegment == null");
            }
            push(str, 0, str.length(), false, true);
            return this;
        }

        public Builder addEncodedPathSegments(String str) {
            if (str != null) {
                return addPathSegments(str, true);
            }
            throw new NullPointerException("encodedPathSegments == null");
        }

        private Builder addPathSegments(String str, boolean z) {
            boolean z2;
            int i = 0;
            do {
                int delimiterOffset = Util.delimiterOffset(str, i, str.length(), "/\\");
                if (delimiterOffset < str.length()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                push(str, i, delimiterOffset, z2, z);
                i = delimiterOffset + 1;
            } while (i <= str.length());
            return this;
        }

        public Builder setPathSegment(int i, String str) {
            if (str == null) {
                throw new NullPointerException("pathSegment == null");
            }
            String canonicalize = HttpUrl.canonicalize(str, 0, str.length(), HttpUrl.PATH_SEGMENT_ENCODE_SET, false, false, false, true);
            if (isDot(canonicalize) || isDotDot(canonicalize)) {
                throw new IllegalArgumentException("unexpected path segment: " + str);
            }
            this.encodedPathSegments.set(i, canonicalize);
            return this;
        }

        public Builder setEncodedPathSegment(int i, String str) {
            if (str == null) {
                throw new NullPointerException("encodedPathSegment == null");
            }
            String canonicalize = HttpUrl.canonicalize(str, 0, str.length(), HttpUrl.PATH_SEGMENT_ENCODE_SET, true, false, false, true);
            this.encodedPathSegments.set(i, canonicalize);
            if (!isDot(canonicalize) && !isDotDot(canonicalize)) {
                return this;
            }
            throw new IllegalArgumentException("unexpected path segment: " + str);
        }

        public Builder removePathSegment(int i) {
            this.encodedPathSegments.remove(i);
            if (this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            }
            return this;
        }

        public Builder encodedPath(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPath == null");
            } else if (!str.startsWith("/")) {
                throw new IllegalArgumentException("unexpected encodedPath: " + str);
            } else {
                resolvePath(str, 0, str.length());
                return this;
            }
        }

        public Builder query(@Nullable String str) {
            List<String> list;
            if (str != null) {
                list = HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, HttpUrl.QUERY_ENCODE_SET, false, false, true, true));
            } else {
                list = null;
            }
            this.encodedQueryNamesAndValues = list;
            return this;
        }

        public Builder encodedQuery(@Nullable String str) {
            List<String> list;
            if (str != null) {
                list = HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true));
            } else {
                list = null;
            }
            this.encodedQueryNamesAndValues = list;
            return this;
        }

        public Builder addQueryParameter(String str, @Nullable String str2) {
            String str3;
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, true));
            List<String> list = this.encodedQueryNamesAndValues;
            if (str2 != null) {
                str3 = HttpUrl.canonicalize(str2, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, true);
            } else {
                str3 = null;
            }
            list.add(str3);
            return this;
        }

        public Builder addEncodedQueryParameter(String str, @Nullable String str2) {
            String str3;
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET, true, false, true, true));
            List<String> list = this.encodedQueryNamesAndValues;
            if (str2 != null) {
                str3 = HttpUrl.canonicalize(str2, HttpUrl.QUERY_COMPONENT_ENCODE_SET, true, false, true, true);
            } else {
                str3 = null;
            }
            list.add(str3);
            return this;
        }

        public Builder setQueryParameter(String str, @Nullable String str2) {
            removeAllQueryParameters(str);
            addQueryParameter(str, str2);
            return this;
        }

        public Builder setEncodedQueryParameter(String str, @Nullable String str2) {
            removeAllEncodedQueryParameters(str);
            addEncodedQueryParameter(str, str2);
            return this;
        }

        public Builder removeAllQueryParameters(String str) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.encodedQueryNamesAndValues != null) {
                removeAllCanonicalQueryParameters(HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, true));
            }
            return this;
        }

        public Builder removeAllEncodedQueryParameters(String str) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.encodedQueryNamesAndValues != null) {
                removeAllCanonicalQueryParameters(HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET, true, false, true, true));
            }
            return this;
        }

        private void removeAllCanonicalQueryParameters(String str) {
            for (int size = this.encodedQueryNamesAndValues.size() - 2; size >= 0; size -= 2) {
                if (str.equals(this.encodedQueryNamesAndValues.get(size))) {
                    this.encodedQueryNamesAndValues.remove(size + 1);
                    this.encodedQueryNamesAndValues.remove(size);
                    if (this.encodedQueryNamesAndValues.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
            }
        }

        public Builder fragment(@Nullable String str) {
            String str2;
            if (str != null) {
                str2 = HttpUrl.canonicalize(str, "", false, false, false, false);
            } else {
                str2 = null;
            }
            this.encodedFragment = str2;
            return this;
        }

        public Builder encodedFragment(@Nullable String str) {
            String str2;
            if (str != null) {
                str2 = HttpUrl.canonicalize(str, "", true, false, false, false);
            } else {
                str2 = null;
            }
            this.encodedFragment = str2;
            return this;
        }

        /* access modifiers changed from: 0000 */
        public Builder reencodeForUri() {
            int size = this.encodedPathSegments.size();
            for (int i = 0; i < size; i++) {
                this.encodedPathSegments.set(i, HttpUrl.canonicalize((String) this.encodedPathSegments.get(i), HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, true));
            }
            if (this.encodedQueryNamesAndValues != null) {
                int size2 = this.encodedQueryNamesAndValues.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = (String) this.encodedQueryNamesAndValues.get(i2);
                    if (str != null) {
                        this.encodedQueryNamesAndValues.set(i2, HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, true));
                    }
                }
            }
            if (this.encodedFragment != null) {
                this.encodedFragment = HttpUrl.canonicalize(this.encodedFragment, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, false);
            }
            return this;
        }

        public HttpUrl build() {
            if (this.scheme == null) {
                throw new IllegalStateException("scheme == null");
            } else if (this.host != null) {
                return new HttpUrl(this);
            } else {
                throw new IllegalStateException("host == null");
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.scheme);
            sb.append("://");
            if (!this.encodedUsername.isEmpty() || !this.encodedPassword.isEmpty()) {
                sb.append(this.encodedUsername);
                if (!this.encodedPassword.isEmpty()) {
                    sb.append(Http.PROTOCOL_PORT_SPLITTER);
                    sb.append(this.encodedPassword);
                }
                sb.append('@');
            }
            if (this.host.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.host);
                sb.append(']');
            } else {
                sb.append(this.host);
            }
            int effectivePort = effectivePort();
            if (effectivePort != HttpUrl.defaultPort(this.scheme)) {
                sb.append(Http.PROTOCOL_PORT_SPLITTER);
                sb.append(effectivePort);
            }
            HttpUrl.pathSegmentsToString(sb, this.encodedPathSegments);
            if (this.encodedQueryNamesAndValues != null) {
                sb.append('?');
                HttpUrl.namesAndValuesToQueryString(sb, this.encodedQueryNamesAndValues);
            }
            if (this.encodedFragment != null) {
                sb.append('#');
                sb.append(this.encodedFragment);
            }
            return sb.toString();
        }

        /* access modifiers changed from: 0000 */
        public ParseResult parse(@Nullable HttpUrl httpUrl, String str) {
            int i;
            char c;
            int skipLeadingAsciiWhitespace = Util.skipLeadingAsciiWhitespace(str, 0, str.length());
            int skipTrailingAsciiWhitespace = Util.skipTrailingAsciiWhitespace(str, skipLeadingAsciiWhitespace, str.length());
            if (schemeDelimiterOffset(str, skipLeadingAsciiWhitespace, skipTrailingAsciiWhitespace) != -1) {
                if (str.regionMatches(true, skipLeadingAsciiWhitespace, "https:", 0, 6)) {
                    this.scheme = "https";
                    skipLeadingAsciiWhitespace += "https:".length();
                } else {
                    if (!str.regionMatches(true, skipLeadingAsciiWhitespace, "http:", 0, 5)) {
                        return ParseResult.UNSUPPORTED_SCHEME;
                    }
                    this.scheme = HttpHost.DEFAULT_SCHEME_NAME;
                    skipLeadingAsciiWhitespace += "http:".length();
                }
            } else if (httpUrl == null) {
                return ParseResult.MISSING_SCHEME;
            } else {
                this.scheme = httpUrl.scheme;
            }
            boolean z = false;
            boolean z2 = false;
            int slashCount = slashCount(str, skipLeadingAsciiWhitespace, skipTrailingAsciiWhitespace);
            if (slashCount >= 2 || httpUrl == null || !httpUrl.scheme.equals(this.scheme)) {
                int i2 = skipLeadingAsciiWhitespace + slashCount;
                while (true) {
                    boolean z3 = z2;
                    boolean z4 = z;
                    int i3 = i2;
                    int delimiterOffset = Util.delimiterOffset(str, i3, skipTrailingAsciiWhitespace, "@/\\?#");
                    if (delimiterOffset != skipTrailingAsciiWhitespace) {
                        c = str.charAt(delimiterOffset);
                    } else {
                        c = 65535;
                    }
                    switch (c) {
                        case 65535:
                        case '#':
                        case '/':
                        case '?':
                        case '\\':
                            int portColonOffset = portColonOffset(str, i3, delimiterOffset);
                            if (portColonOffset + 1 < delimiterOffset) {
                                this.host = canonicalizeHost(str, i3, portColonOffset);
                                this.port = parsePort(str, portColonOffset + 1, delimiterOffset);
                                if (this.port == -1) {
                                    return ParseResult.INVALID_PORT;
                                }
                            } else {
                                this.host = canonicalizeHost(str, i3, portColonOffset);
                                this.port = HttpUrl.defaultPort(this.scheme);
                            }
                            if (this.host != null) {
                                skipLeadingAsciiWhitespace = delimiterOffset;
                                break;
                            } else {
                                return ParseResult.INVALID_HOST;
                            }
                        case '@':
                            if (!z3) {
                                int delimiterOffset2 = Util.delimiterOffset(str, i3, delimiterOffset, (char) Http.PROTOCOL_PORT_SPLITTER);
                                String canonicalize = HttpUrl.canonicalize(str, i3, delimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                                if (z4) {
                                    canonicalize = this.encodedUsername + "%40" + canonicalize;
                                }
                                this.encodedUsername = canonicalize;
                                if (delimiterOffset2 != delimiterOffset) {
                                    z3 = true;
                                    this.encodedPassword = HttpUrl.canonicalize(str, delimiterOffset2 + 1, delimiterOffset, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                                }
                                z4 = true;
                            } else {
                                this.encodedPassword += "%40" + HttpUrl.canonicalize(str, i3, delimiterOffset, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                            }
                            i2 = delimiterOffset + 1;
                            z2 = z3;
                            continue;
                        default:
                            z2 = z3;
                            i2 = i3;
                            continue;
                    }
                    z = z4;
                }
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host;
                this.port = httpUrl.port;
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (skipLeadingAsciiWhitespace == skipTrailingAsciiWhitespace || str.charAt(skipLeadingAsciiWhitespace) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
            }
            int delimiterOffset3 = Util.delimiterOffset(str, skipLeadingAsciiWhitespace, skipTrailingAsciiWhitespace, "?#");
            resolvePath(str, skipLeadingAsciiWhitespace, delimiterOffset3);
            if (delimiterOffset3 >= skipTrailingAsciiWhitespace || str.charAt(delimiterOffset3) != '?') {
                i = delimiterOffset3;
            } else {
                i = Util.delimiterOffset(str, delimiterOffset3, skipTrailingAsciiWhitespace, '#');
                this.encodedQueryNamesAndValues = HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, delimiterOffset3 + 1, i, HttpUrl.QUERY_ENCODE_SET, true, false, true, true));
            }
            if (i < skipTrailingAsciiWhitespace && str.charAt(i) == '#') {
                this.encodedFragment = HttpUrl.canonicalize(str, i + 1, skipTrailingAsciiWhitespace, "", true, false, false, false);
            }
            return ParseResult.SUCCESS;
        }

        private void resolvePath(String str, int i, int i2) {
            if (i != i2) {
                char charAt = str.charAt(i);
                if (charAt == '/' || charAt == '\\') {
                    this.encodedPathSegments.clear();
                    this.encodedPathSegments.add("");
                    i++;
                } else {
                    this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, "");
                }
                int i3 = i;
                while (i3 < i2) {
                    int delimiterOffset = Util.delimiterOffset(str, i3, i2, "/\\");
                    boolean z = delimiterOffset < i2;
                    push(str, i3, delimiterOffset, z, true);
                    if (z) {
                        delimiterOffset++;
                    }
                    i3 = delimiterOffset;
                }
            }
        }

        private void push(String str, int i, int i2, boolean z, boolean z2) {
            String canonicalize = HttpUrl.canonicalize(str, i, i2, HttpUrl.PATH_SEGMENT_ENCODE_SET, z2, false, false, true);
            if (!isDot(canonicalize)) {
                if (isDotDot(canonicalize)) {
                    pop();
                    return;
                }
                if (((String) this.encodedPathSegments.get(this.encodedPathSegments.size() - 1)).isEmpty()) {
                    this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, canonicalize);
                } else {
                    this.encodedPathSegments.add(canonicalize);
                }
                if (z) {
                    this.encodedPathSegments.add("");
                }
            }
        }

        private boolean isDot(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean isDotDot(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private void pop() {
            if (!((String) this.encodedPathSegments.remove(this.encodedPathSegments.size() - 1)).isEmpty() || this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            } else {
                this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, "");
            }
        }

        private static int schemeDelimiterOffset(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char charAt = str.charAt(i);
            if ((charAt < 'a' || charAt > 'z') && (charAt < 'A' || charAt > 'Z')) {
                return -1;
            }
            int i3 = i + 1;
            while (i3 < i2) {
                char charAt2 = str.charAt(i3);
                if ((charAt2 >= 'a' && charAt2 <= 'z') || ((charAt2 >= 'A' && charAt2 <= 'Z') || ((charAt2 >= '0' && charAt2 <= '9') || charAt2 == '+' || charAt2 == '-' || charAt2 == '.'))) {
                    i3++;
                } else if (charAt2 == ':') {
                    return i3;
                } else {
                    return -1;
                }
            }
            return -1;
        }

        private static int slashCount(String str, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i3++;
                i++;
            }
            return i3;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x000f, code lost:
            if (r0 >= r5) goto L_0x000a;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static int portColonOffset(java.lang.String r3, int r4, int r5) {
            /*
                r0 = r4
            L_0x0001:
                if (r0 >= r5) goto L_0x001a
                char r1 = r3.charAt(r0)
                switch(r1) {
                    case 58: goto L_0x001b;
                    case 91: goto L_0x000d;
                    default: goto L_0x000a;
                }
            L_0x000a:
                int r0 = r0 + 1
                goto L_0x0001
            L_0x000d:
                int r0 = r0 + 1
                if (r0 >= r5) goto L_0x000a
                char r1 = r3.charAt(r0)
                r2 = 93
                if (r1 != r2) goto L_0x000d
                goto L_0x000a
            L_0x001a:
                r0 = r5
            L_0x001b:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.portColonOffset(java.lang.String, int, int):int");
        }

        private static String canonicalizeHost(String str, int i, int i2) {
            InetAddress decodeIpv6;
            String percentDecode = HttpUrl.percentDecode(str, i, i2, false);
            if (!percentDecode.contains(":")) {
                return Util.domainToAscii(percentDecode);
            }
            if (!percentDecode.startsWith("[") || !percentDecode.endsWith("]")) {
                decodeIpv6 = decodeIpv6(percentDecode, 0, percentDecode.length());
            } else {
                decodeIpv6 = decodeIpv6(percentDecode, 1, percentDecode.length() - 1);
            }
            if (decodeIpv6 == null) {
                return null;
            }
            byte[] address = decodeIpv6.getAddress();
            if (address.length == 16) {
                return inet6AddressToAscii(address);
            }
            throw new AssertionError();
        }

        /* JADX WARNING: Code restructure failed: missing block: B:59:?, code lost:
            return null;
         */
        @javax.annotation.Nullable
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static java.net.InetAddress decodeIpv6(java.lang.String r12, int r13, int r14) {
            /*
                r11 = 1
                r7 = -1
                r3 = 0
                r5 = 0
                r0 = 16
                byte[] r8 = new byte[r0]
                r0 = r13
                r4 = r7
                r1 = r7
                r2 = r5
            L_0x000c:
                if (r0 >= r14) goto L_0x002b
                int r6 = r8.length
                if (r2 != r6) goto L_0x0013
                r0 = r3
            L_0x0012:
                return r0
            L_0x0013:
                int r6 = r0 + 2
                if (r6 > r14) goto L_0x0032
                java.lang.String r6 = "::"
                r9 = 2
                boolean r6 = r12.regionMatches(r0, r6, r5, r9)
                if (r6 == 0) goto L_0x0032
                if (r1 == r7) goto L_0x0024
                r0 = r3
                goto L_0x0012
            L_0x0024:
                int r0 = r0 + 2
                int r1 = r2 + 2
                if (r0 != r14) goto L_0x00a1
                r2 = r1
            L_0x002b:
                int r0 = r8.length
                if (r2 == r0) goto L_0x0094
                if (r1 != r7) goto L_0x0085
                r0 = r3
                goto L_0x0012
            L_0x0032:
                if (r2 == 0) goto L_0x003e
                java.lang.String r6 = ":"
                boolean r6 = r12.regionMatches(r0, r6, r5, r11)
                if (r6 == 0) goto L_0x0055
                int r0 = r0 + 1
            L_0x003e:
                r4 = r5
                r6 = r0
            L_0x0040:
                if (r6 >= r14) goto L_0x004c
                char r9 = r12.charAt(r6)
                int r9 = okhttp3.HttpUrl.decodeHexDigit(r9)
                if (r9 != r7) goto L_0x006c
            L_0x004c:
                int r9 = r6 - r0
                if (r9 == 0) goto L_0x0053
                r10 = 4
                if (r9 <= r10) goto L_0x0072
            L_0x0053:
                r0 = r3
                goto L_0x0012
            L_0x0055:
                java.lang.String r6 = "."
                boolean r0 = r12.regionMatches(r0, r6, r5, r11)
                if (r0 == 0) goto L_0x006a
                int r0 = r2 + -2
                boolean r0 = decodeIpv4Suffix(r12, r4, r14, r8, r0)
                if (r0 != 0) goto L_0x0067
                r0 = r3
                goto L_0x0012
            L_0x0067:
                int r2 = r2 + 2
                goto L_0x002b
            L_0x006a:
                r0 = r3
                goto L_0x0012
            L_0x006c:
                int r4 = r4 << 4
                int r4 = r4 + r9
                int r6 = r6 + 1
                goto L_0x0040
            L_0x0072:
                int r9 = r2 + 1
                int r10 = r4 >>> 8
                r10 = r10 & 255(0xff, float:3.57E-43)
                byte r10 = (byte) r10
                r8[r2] = r10
                int r2 = r9 + 1
                r4 = r4 & 255(0xff, float:3.57E-43)
                byte r4 = (byte) r4
                r8[r9] = r4
                r4 = r0
                r0 = r6
                goto L_0x000c
            L_0x0085:
                int r0 = r8.length
                int r3 = r2 - r1
                int r0 = r0 - r3
                int r3 = r2 - r1
                java.lang.System.arraycopy(r8, r1, r8, r0, r3)
                int r0 = r8.length
                int r0 = r0 - r2
                int r0 = r0 + r1
                java.util.Arrays.fill(r8, r1, r0, r5)
            L_0x0094:
                java.net.InetAddress r0 = java.net.InetAddress.getByAddress(r8)     // Catch:{ UnknownHostException -> 0x009a }
                goto L_0x0012
            L_0x009a:
                r0 = move-exception
                java.lang.AssertionError r0 = new java.lang.AssertionError
                r0.<init>()
                throw r0
            L_0x00a1:
                r2 = r1
                goto L_0x003e
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.decodeIpv6(java.lang.String, int, int):java.net.InetAddress");
        }

        private static boolean decodeIpv4Suffix(String str, int i, int i2, byte[] bArr, int i3) {
            int i4 = i;
            int i5 = i3;
            while (i4 < i2) {
                if (i5 == bArr.length) {
                    return false;
                }
                if (i5 != i3) {
                    if (str.charAt(i4) != '.') {
                        return false;
                    }
                    i4++;
                }
                int i6 = 0;
                int i7 = i4;
                while (i7 < i2) {
                    char charAt = str.charAt(i7);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    } else if (i6 == 0 && i4 != i7) {
                        return false;
                    } else {
                        i6 = ((i6 * 10) + charAt) - 48;
                        if (i6 > 255) {
                            return false;
                        }
                        i7++;
                    }
                }
                if (i7 - i4 == 0) {
                    return false;
                }
                int i8 = i5 + 1;
                bArr[i5] = (byte) i6;
                i5 = i8;
                i4 = i7;
            }
            if (i5 != i3 + 4) {
                return false;
            }
            return true;
        }

        private static String inet6AddressToAscii(byte[] bArr) {
            int i = 0;
            int i2 = 0;
            int i3 = -1;
            int i4 = 0;
            while (i4 < bArr.length) {
                int i5 = i4;
                while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                    i5 += 2;
                }
                int i6 = i5 - i4;
                if (i6 > i2 && i6 >= 4) {
                    i2 = i6;
                    i3 = i4;
                }
                i4 = i5 + 2;
            }
            Buffer buffer = new Buffer();
            while (i < bArr.length) {
                if (i == i3) {
                    buffer.writeByte(58);
                    i += i2;
                    if (i == 16) {
                        buffer.writeByte(58);
                    }
                } else {
                    if (i > 0) {
                        buffer.writeByte(58);
                    }
                    buffer.writeHexadecimalUnsignedLong((long) (((bArr[i] & 255) << 8) | (bArr[i + 1] & 255)));
                    i += 2;
                }
            }
            return buffer.readUtf8();
        }

        private static int parsePort(String str, int i, int i2) {
            try {
                int parseInt = Integer.parseInt(HttpUrl.canonicalize(str, i, i2, "", false, false, false, true));
                if (parseInt <= 0 || parseInt > 65535) {
                    return -1;
                }
                return parseInt;
            } catch (NumberFormatException e) {
                return -1;
            }
        }
    }

    HttpUrl(Builder builder) {
        List<String> list;
        String str = null;
        this.scheme = builder.scheme;
        this.username = percentDecode(builder.encodedUsername, false);
        this.password = percentDecode(builder.encodedPassword, false);
        this.host = builder.host;
        this.port = builder.effectivePort();
        this.pathSegments = percentDecode(builder.encodedPathSegments, false);
        if (builder.encodedQueryNamesAndValues != null) {
            list = percentDecode(builder.encodedQueryNamesAndValues, true);
        } else {
            list = null;
        }
        this.queryNamesAndValues = list;
        if (builder.encodedFragment != null) {
            str = percentDecode(builder.encodedFragment, false);
        }
        this.fragment = str;
        this.url = builder.toString();
    }

    public URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public URI uri() {
        String builder = newBuilder().reencodeForUri().toString();
        try {
            return new URI(builder);
        } catch (URISyntaxException e) {
            try {
                return URI.create(builder.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception e2) {
                throw new RuntimeException(e);
            }
        }
    }

    public String scheme() {
        return this.scheme;
    }

    public boolean isHttps() {
        return this.scheme.equals("https");
    }

    public String encodedUsername() {
        if (this.username.isEmpty()) {
            return "";
        }
        int length = this.scheme.length() + 3;
        return this.url.substring(length, Util.delimiterOffset(this.url, length, this.url.length(), ":@"));
    }

    public String username() {
        return this.username;
    }

    public String encodedPassword() {
        if (this.password.isEmpty()) {
            return "";
        }
        return this.url.substring(this.url.indexOf(58, this.scheme.length() + 3) + 1, this.url.indexOf(64));
    }

    public String password() {
        return this.password;
    }

    public String host() {
        return this.host;
    }

    public int port() {
        return this.port;
    }

    public static int defaultPort(String str) {
        if (str.equals(HttpHost.DEFAULT_SCHEME_NAME)) {
            return 80;
        }
        if (str.equals("https")) {
            return ServerPort.PORT_443;
        }
        return -1;
    }

    public int pathSize() {
        return this.pathSegments.size();
    }

    public String encodedPath() {
        int indexOf = this.url.indexOf(47, this.scheme.length() + 3);
        return this.url.substring(indexOf, Util.delimiterOffset(this.url, indexOf, this.url.length(), "?#"));
    }

    static void pathSegmentsToString(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append(Http.PROTOCOL_HOST_SPLITTER);
            sb.append((String) list.get(i));
        }
    }

    public List<String> encodedPathSegments() {
        int indexOf = this.url.indexOf(47, this.scheme.length() + 3);
        int delimiterOffset = Util.delimiterOffset(this.url, indexOf, this.url.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < delimiterOffset) {
            int i = indexOf + 1;
            indexOf = Util.delimiterOffset(this.url, i, delimiterOffset, (char) Http.PROTOCOL_HOST_SPLITTER);
            arrayList.add(this.url.substring(i, indexOf));
        }
        return arrayList;
    }

    public List<String> pathSegments() {
        return this.pathSegments;
    }

    @Nullable
    public String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int indexOf = this.url.indexOf(63) + 1;
        return this.url.substring(indexOf, Util.delimiterOffset(this.url, indexOf + 1, this.url.length(), '#'));
    }

    static void namesAndValuesToQueryString(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = (String) list.get(i);
            String str2 = (String) list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    static List<String> queryStringToNamesAndValues(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int indexOf = str.indexOf(38, i);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i);
            if (indexOf2 == -1 || indexOf2 > indexOf) {
                arrayList.add(str.substring(i, indexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            }
            i = indexOf + 1;
        }
        return arrayList;
    }

    @Nullable
    public String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        namesAndValuesToQueryString(sb, this.queryNamesAndValues);
        return sb.toString();
    }

    public int querySize() {
        if (this.queryNamesAndValues != null) {
            return this.queryNamesAndValues.size() / 2;
        }
        return 0;
    }

    @Nullable
    public String queryParameter(String str) {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int size = this.queryNamesAndValues.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.queryNamesAndValues.get(i))) {
                return (String) this.queryNamesAndValues.get(i + 1);
            }
        }
        return null;
    }

    public Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = this.queryNamesAndValues.size();
        for (int i = 0; i < size; i += 2) {
            linkedHashSet.add(this.queryNamesAndValues.get(i));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public List<String> queryParameterValues(String str) {
        if (this.queryNamesAndValues == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = this.queryNamesAndValues.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.queryNamesAndValues.get(i))) {
                arrayList.add(this.queryNamesAndValues.get(i + 1));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String queryParameterName(int i) {
        if (this.queryNamesAndValues != null) {
            return (String) this.queryNamesAndValues.get(i * 2);
        }
        throw new IndexOutOfBoundsException();
    }

    public String queryParameterValue(int i) {
        if (this.queryNamesAndValues != null) {
            return (String) this.queryNamesAndValues.get((i * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    @Nullable
    public String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        return this.url.substring(this.url.indexOf(35) + 1);
    }

    @Nullable
    public String fragment() {
        return this.fragment;
    }

    public String redact() {
        return newBuilder("/...").username("").password("").build().toString();
    }

    @Nullable
    public HttpUrl resolve(String str) {
        Builder newBuilder = newBuilder(str);
        if (newBuilder != null) {
            return newBuilder.build();
        }
        return null;
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.scheme = this.scheme;
        builder.encodedUsername = encodedUsername();
        builder.encodedPassword = encodedPassword();
        builder.host = this.host;
        builder.port = this.port != defaultPort(this.scheme) ? this.port : -1;
        builder.encodedPathSegments.clear();
        builder.encodedPathSegments.addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.encodedFragment = encodedFragment();
        return builder;
    }

    @Nullable
    public Builder newBuilder(String str) {
        Builder builder = new Builder();
        if (builder.parse(this, str) == ParseResult.SUCCESS) {
            return builder;
        }
        return null;
    }

    @Nullable
    public static HttpUrl parse(String str) {
        Builder builder = new Builder();
        if (builder.parse(null, str) == ParseResult.SUCCESS) {
            return builder.build();
        }
        return null;
    }

    @Nullable
    public static HttpUrl get(URL url2) {
        return parse(url2.toString());
    }

    static HttpUrl getChecked(String str) throws MalformedURLException, UnknownHostException {
        Builder builder = new Builder();
        ParseResult parse = builder.parse(null, str);
        switch (parse) {
            case SUCCESS:
                return builder.build();
            case INVALID_HOST:
                throw new UnknownHostException("Invalid host: " + str);
            default:
                throw new MalformedURLException("Invalid URL: " + parse + " for " + str);
        }
    }

    @Nullable
    public static HttpUrl get(URI uri) {
        return parse(uri.toString());
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof HttpUrl) && ((HttpUrl) obj).url.equals(this.url);
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public String toString() {
        return this.url;
    }

    @Nullable
    public String topPrivateDomain() {
        if (Util.verifyAsIpAddress(this.host)) {
            return null;
        }
        return PublicSuffixDatabase.get().getEffectiveTldPlusOne(this.host);
    }

    static String percentDecode(String str, boolean z) {
        return percentDecode(str, 0, str.length(), z);
    }

    private List<String> percentDecode(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = (String) list.get(i);
            arrayList.add(str != null ? percentDecode(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static String percentDecode(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, i3);
                percentDecode(buffer, str, i3, i2, z);
                return buffer.readUtf8();
            }
        }
        return str.substring(i, i2);
    }

    static void percentDecode(Buffer buffer, String str, int i, int i2, boolean z) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt != 37 || i3 + 2 >= i2) {
                if (codePointAt == 43 && z) {
                    buffer.writeByte(32);
                }
                buffer.writeUtf8CodePoint(codePointAt);
            } else {
                int decodeHexDigit = decodeHexDigit(str.charAt(i3 + 1));
                int decodeHexDigit2 = decodeHexDigit(str.charAt(i3 + 2));
                if (!(decodeHexDigit == -1 || decodeHexDigit2 == -1)) {
                    buffer.writeByte((decodeHexDigit << 4) + decodeHexDigit2);
                    i3 += 2;
                }
                buffer.writeUtf8CodePoint(codePointAt);
            }
            i3 += Character.charCount(codePointAt);
        }
    }

    static boolean percentEncoded(String str, int i, int i2) {
        return i + 2 < i2 && str.charAt(i) == '%' && decodeHexDigit(str.charAt(i + 1)) != -1 && decodeHexDigit(str.charAt(i + 2)) != -1;
    }

    static int decodeHexDigit(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'a' && c <= 'f') {
            return (c - 'a') + 10;
        }
        if (c < 'A' || c > 'F') {
            return -1;
        }
        return (c - 'A') + 10;
    }

    static String canonicalize(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !percentEncoded(str, i3, i2)))) || (codePointAt == 43 && z3)))) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, i3);
                canonicalize(buffer, str, i3, i2, str2, z, z2, z3, z4);
                return buffer.readUtf8();
            }
            i3 += Character.charCount(codePointAt);
        }
        return str.substring(i, i2);
    }

    static void canonicalize(Buffer buffer, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        Buffer buffer2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (!z || !(codePointAt == 9 || codePointAt == 10 || codePointAt == 12 || codePointAt == 13)) {
                if (codePointAt == 43 && z3) {
                    buffer.writeUtf8(z ? "+" : "%2B");
                } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z || (z2 && !percentEncoded(str, i, i2)))))) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(codePointAt);
                    while (!buffer2.exhausted()) {
                        byte readByte = buffer2.readByte() & 255;
                        buffer.writeByte(37);
                        buffer.writeByte((int) HEX_DIGITS[(readByte >> 4) & 15]);
                        buffer.writeByte((int) HEX_DIGITS[readByte & 15]);
                    }
                } else {
                    buffer.writeUtf8CodePoint(codePointAt);
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    static String canonicalize(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return canonicalize(str, 0, str.length(), str2, z, z2, z3, z4);
    }
}
