package p048b.p052b.p059c.p060a.p061a.p062a.p063d;

import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.SSLException;
import p048b.p052b.p059c.p060a.p061a.p062a.p064e.C1129c;

/* renamed from: b.b.c.a.a.a.d.c */
/* loaded from: classes2.dex */
public class C1126c {

    /* renamed from: a */
    private static final Pattern f5310a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    /* renamed from: b */
    private static final String[] f5311b;

    static {
        String[] strArr = {"ac", "co", "com", "ed", "edu", "go", "gouv", "gov", XiaomiOAuthConstants.EXTRA_INFO, "lg", "ne", "net", "or", "org"};
        f5311b = strArr;
        Arrays.sort(strArr);
    }

    /* renamed from: a */
    public static final void m21136a(String str, X509Certificate x509Certificate, boolean z) throws SSLException {
        String[] m21133d = m21133d(x509Certificate);
        String[] m21132e = m21132e(x509Certificate);
        C1129c.m21125b("", "cn is : " + Arrays.toString(m21133d));
        C1129c.m21125b("", "san is : " + Arrays.toString(m21132e));
        m21130g(str, m21133d, m21132e, z);
    }

    /* renamed from: b */
    public static boolean m21135b(String str) {
        int length = str.length();
        if (length < 7 || length > 9) {
            return true;
        }
        int i = length - 3;
        if (str.charAt(i) == '.') {
            return Arrays.binarySearch(f5311b, str.substring(2, i)) < 0;
        }
        return true;
    }

    /* renamed from: c */
    public static int m21134c(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == '.') {
                i++;
            }
        }
        return i;
    }

    /* renamed from: d */
    public static String[] m21133d(X509Certificate x509Certificate) {
        List<String> m21143b = new C1125b(x509Certificate.getSubjectX500Principal()).m21143b("cn");
        if (m21143b.isEmpty()) {
            return null;
        }
        String[] strArr = new String[m21143b.size()];
        m21143b.toArray(strArr);
        return strArr;
    }

    /* renamed from: e */
    public static String[] m21132e(X509Certificate x509Certificate) {
        Collection<List<?>> collection;
        LinkedList linkedList = new LinkedList();
        try {
            collection = x509Certificate.getSubjectAlternativeNames();
        } catch (CertificateParsingException e) {
            C1129c.m21126a("", "Error parsing certificate.", e);
            collection = null;
        }
        if (collection != null) {
            for (List<?> list : collection) {
                if (((Integer) list.get(0)).intValue() == 2) {
                    linkedList.add((String) list.get(1));
                }
            }
        }
        if (linkedList.isEmpty()) {
            return null;
        }
        String[] strArr = new String[linkedList.size()];
        linkedList.toArray(strArr);
        return strArr;
    }

    /* renamed from: f */
    private static boolean m21131f(String str) {
        return f5310a.matcher(str).matches();
    }

    /* renamed from: g */
    public static final void m21130g(String str, String[] strArr, String[] strArr2, boolean z) throws SSLException {
        LinkedList linkedList = new LinkedList();
        if (strArr != null && strArr.length > 0 && strArr[0] != null) {
            linkedList.add(strArr[0]);
        }
        if (strArr2 != null) {
            for (String str2 : strArr2) {
                if (str2 != null) {
                    linkedList.add(str2);
                }
            }
        }
        if (!linkedList.isEmpty()) {
            StringBuffer stringBuffer = new StringBuffer();
            String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
            Iterator it2 = linkedList.iterator();
            boolean z2 = false;
            while (it2.hasNext()) {
                String lowerCase2 = ((String) it2.next()).toLowerCase(Locale.ENGLISH);
                stringBuffer.append(" <");
                stringBuffer.append(lowerCase2);
                stringBuffer.append('>');
                if (it2.hasNext()) {
                    stringBuffer.append(" OR");
                }
                if (lowerCase2.startsWith("*.") && lowerCase2.indexOf(46, 2) != -1 && m21135b(lowerCase2) && !m21131f(str)) {
                    boolean endsWith = lowerCase.endsWith(lowerCase2.substring(1));
                    if (endsWith && z) {
                        z2 = m21134c(lowerCase) == m21134c(lowerCase2);
                        continue;
                    } else {
                        z2 = endsWith;
                        continue;
                    }
                } else {
                    z2 = lowerCase.equals(lowerCase2);
                    continue;
                }
                if (z2) {
                    break;
                }
            }
            if (z2) {
                return;
            }
            throw new SSLException("hostname in certificate didn't match: <" + str + "> !=" + ((Object) stringBuffer));
        }
        throw new SSLException("Certificate for <" + str + "> doesn't contain CN or DNS subjectAlt");
    }
}
