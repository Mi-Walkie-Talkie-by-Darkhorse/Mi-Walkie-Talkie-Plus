package okhttp3;

import com.mi.milinkforgame.sdk.base.os.Http;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.internal.Util;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;

public final class CertificatePinner {
    public static final CertificatePinner DEFAULT = new Builder().build();
    @Nullable
    private final CertificateChainCleaner certificateChainCleaner;
    private final Set<Pin> pins;

    public static final class Builder {
        private final List<Pin> pins = new ArrayList();

        public Builder add(String str, String... strArr) {
            if (str == null) {
                throw new NullPointerException("pattern == null");
            }
            for (String pin : strArr) {
                this.pins.add(new Pin(str, pin));
            }
            return this;
        }

        public CertificatePinner build() {
            return new CertificatePinner(new LinkedHashSet(this.pins), null);
        }
    }

    static final class Pin {
        private static final String WILDCARD = "*.";
        final String canonicalHostname;
        final ByteString hash;
        final String hashAlgorithm;
        final String pattern;

        Pin(String str, String str2) {
            String host;
            this.pattern = str;
            if (str.startsWith(WILDCARD)) {
                host = HttpUrl.parse(Http.PROTOCOL_PREFIX + str.substring(WILDCARD.length())).host();
            } else {
                host = HttpUrl.parse(Http.PROTOCOL_PREFIX + str).host();
            }
            this.canonicalHostname = host;
            if (str2.startsWith("sha1/")) {
                this.hashAlgorithm = "sha1/";
                this.hash = ByteString.decodeBase64(str2.substring("sha1/".length()));
            } else if (str2.startsWith("sha256/")) {
                this.hashAlgorithm = "sha256/";
                this.hash = ByteString.decodeBase64(str2.substring("sha256/".length()));
            } else {
                throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + str2);
            }
            if (this.hash == null) {
                throw new IllegalArgumentException("pins must be base64: " + str2);
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean matches(String str) {
            if (!this.pattern.startsWith(WILDCARD)) {
                return str.equals(this.canonicalHostname);
            }
            return str.regionMatches(false, str.indexOf(46) + 1, this.canonicalHostname, 0, this.canonicalHostname.length());
        }

        public boolean equals(Object obj) {
            return (obj instanceof Pin) && this.pattern.equals(((Pin) obj).pattern) && this.hashAlgorithm.equals(((Pin) obj).hashAlgorithm) && this.hash.equals(((Pin) obj).hash);
        }

        public int hashCode() {
            return ((((this.pattern.hashCode() + 527) * 31) + this.hashAlgorithm.hashCode()) * 31) + this.hash.hashCode();
        }

        public String toString() {
            return this.hashAlgorithm + this.hash.base64();
        }
    }

    CertificatePinner(Set<Pin> set, @Nullable CertificateChainCleaner certificateChainCleaner2) {
        this.pins = set;
        this.certificateChainCleaner = certificateChainCleaner2;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof CertificatePinner) && Util.equal(this.certificateChainCleaner, ((CertificatePinner) obj).certificateChainCleaner) && this.pins.equals(((CertificatePinner) obj).pins);
    }

    public int hashCode() {
        return ((this.certificateChainCleaner != null ? this.certificateChainCleaner.hashCode() : 0) * 31) + this.pins.hashCode();
    }

    public void check(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List findMatchingPins = findMatchingPins(str);
        if (!findMatchingPins.isEmpty()) {
            if (this.certificateChainCleaner != null) {
                list = this.certificateChainCleaner.clean(list, str);
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                X509Certificate x509Certificate = (X509Certificate) list.get(i);
                int size2 = findMatchingPins.size();
                int i2 = 0;
                ByteString byteString = null;
                ByteString byteString2 = null;
                while (i2 < size2) {
                    Pin pin = (Pin) findMatchingPins.get(i2);
                    if (pin.hashAlgorithm.equals("sha256/")) {
                        if (byteString == null) {
                            byteString = sha256(x509Certificate);
                        }
                        if (pin.hash.equals(byteString)) {
                            return;
                        }
                    } else if (pin.hashAlgorithm.equals("sha1/")) {
                        if (byteString2 == null) {
                            byteString2 = sha1(x509Certificate);
                        }
                        if (pin.hash.equals(byteString2)) {
                            return;
                        }
                    } else {
                        throw new AssertionError();
                    }
                    ByteString byteString3 = byteString;
                    i2++;
                    byteString2 = byteString2;
                    byteString = byteString3;
                }
            }
            StringBuilder append = new StringBuilder().append("Certificate pinning failure!").append("\n  Peer certificate chain:");
            int size3 = list.size();
            for (int i3 = 0; i3 < size3; i3++) {
                X509Certificate x509Certificate2 = (X509Certificate) list.get(i3);
                append.append("\n    ").append(pin(x509Certificate2)).append(": ").append(x509Certificate2.getSubjectDN().getName());
            }
            append.append("\n  Pinned certificates for ").append(str).append(":");
            int size4 = findMatchingPins.size();
            for (int i4 = 0; i4 < size4; i4++) {
                append.append("\n    ").append((Pin) findMatchingPins.get(i4));
            }
            throw new SSLPeerUnverifiedException(append.toString());
        }
    }

    public void check(String str, Certificate... certificateArr) throws SSLPeerUnverifiedException {
        check(str, Arrays.asList(certificateArr));
    }

    /* access modifiers changed from: 0000 */
    public List<Pin> findMatchingPins(String str) {
        List<Pin> emptyList = Collections.emptyList();
        for (Pin pin : this.pins) {
            if (pin.matches(str)) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList<>();
                }
                emptyList.add(pin);
            }
        }
        return emptyList;
    }

    /* access modifiers changed from: 0000 */
    public CertificatePinner withCertificateChainCleaner(CertificateChainCleaner certificateChainCleaner2) {
        if (Util.equal(this.certificateChainCleaner, certificateChainCleaner2)) {
            return this;
        }
        return new CertificatePinner(this.pins, certificateChainCleaner2);
    }

    public static String pin(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + sha256((X509Certificate) certificate).base64();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    static ByteString sha1(X509Certificate x509Certificate) {
        return ByteString.of(x509Certificate.getPublicKey().getEncoded()).sha1();
    }

    static ByteString sha256(X509Certificate x509Certificate) {
        return ByteString.of(x509Certificate.getPublicKey().getEncoded()).sha256();
    }
}
