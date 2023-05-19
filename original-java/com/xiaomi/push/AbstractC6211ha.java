package com.xiaomi.push;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;
import java.io.ByteArrayOutputStream;
import java.io.ObjectOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: com.xiaomi.push.ha */
/* loaded from: classes2.dex */
public abstract class AbstractC6211ha {

    /* renamed from: a */
    private static long f21813a;

    /* renamed from: a */
    public static final DateFormat f21815a;

    /* renamed from: c */
    private static String f21817c;

    /* renamed from: a */
    private C6217he f21818a;

    /* renamed from: a */
    private List<C6206gx> f21819a;

    /* renamed from: a */
    private final Map<String, Object> f21820a;

    /* renamed from: d */
    private String f21821d;

    /* renamed from: e */
    private String f21822e;

    /* renamed from: f */
    private String f21823f;

    /* renamed from: g */
    private String f21824g;

    /* renamed from: h */
    private String f21825h;

    /* renamed from: i */
    private String f21826i;

    /* renamed from: a */
    protected static final String f21814a = Locale.getDefault().getLanguage().toLowerCase();

    /* renamed from: b */
    private static String f21816b = null;

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        f21815a = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        f21817c = C6225hl.m2612a(5) + Constants.ACCEPT_TIME_SEPARATOR_SERVER;
        f21813a = 0L;
    }

    public AbstractC6211ha() {
        this.f21821d = f21816b;
        this.f21822e = null;
        this.f21823f = null;
        this.f21824g = null;
        this.f21825h = null;
        this.f21826i = null;
        this.f21819a = new CopyOnWriteArrayList();
        this.f21820a = new HashMap();
        this.f21818a = null;
    }

    public AbstractC6211ha(Bundle bundle) {
        this.f21821d = f21816b;
        this.f21822e = null;
        this.f21823f = null;
        this.f21824g = null;
        this.f21825h = null;
        this.f21826i = null;
        this.f21819a = new CopyOnWriteArrayList();
        this.f21820a = new HashMap();
        this.f21818a = null;
        this.f21823f = bundle.getString("ext_to");
        this.f21824g = bundle.getString("ext_from");
        this.f21825h = bundle.getString("ext_chid");
        this.f21822e = bundle.getString("ext_pkt_id");
        Parcelable[] parcelableArray = bundle.getParcelableArray("ext_exts");
        if (parcelableArray != null) {
            this.f21819a = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                C6206gx m2699a = C6206gx.m2699a((Bundle) parcelable);
                if (m2699a != null) {
                    this.f21819a.add(m2699a);
                }
            }
        }
        Bundle bundle2 = bundle.getBundle("ext_ERROR");
        if (bundle2 != null) {
            this.f21818a = new C6217he(bundle2);
        }
    }

    /* renamed from: i */
    public static synchronized String m2656i() {
        String sb;
        synchronized (AbstractC6211ha.class) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f21817c);
            long j = f21813a;
            f21813a = 1 + j;
            sb2.append(Long.toString(j));
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: q */
    public static String m2643q() {
        return f21814a;
    }

    /* renamed from: a */
    public Bundle mo2641a() {
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(this.f21821d)) {
            bundle.putString("ext_ns", this.f21821d);
        }
        if (!TextUtils.isEmpty(this.f21824g)) {
            bundle.putString("ext_from", this.f21824g);
        }
        if (!TextUtils.isEmpty(this.f21823f)) {
            bundle.putString("ext_to", this.f21823f);
        }
        if (!TextUtils.isEmpty(this.f21822e)) {
            bundle.putString("ext_pkt_id", this.f21822e);
        }
        if (!TextUtils.isEmpty(this.f21825h)) {
            bundle.putString("ext_chid", this.f21825h);
        }
        C6217he c6217he = this.f21818a;
        if (c6217he != null) {
            bundle.putBundle("ext_ERROR", c6217he.m2633a());
        }
        List<C6206gx> list = this.f21819a;
        if (list != null) {
            Bundle[] bundleArr = new Bundle[list.size()];
            int i = 0;
            for (C6206gx c6206gx : this.f21819a) {
                Bundle m2702a = c6206gx.m2702a();
                if (m2702a != null) {
                    bundleArr[i] = m2702a;
                    i++;
                }
            }
            bundle.putParcelableArray("ext_exts", bundleArr);
        }
        return bundle;
    }

    /* renamed from: a */
    public C6206gx m2660a(String str) {
        return m2658a(str, null);
    }

    /* renamed from: a */
    public C6206gx m2658a(String str, String str2) {
        for (C6206gx c6206gx : this.f21819a) {
            if (str2 == null || str2.equals(c6206gx.m2693b())) {
                if (str.equals(c6206gx.m2700a())) {
                    return c6206gx;
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    public C6217he m2664a() {
        return this.f21818a;
    }

    /* renamed from: a */
    public synchronized Object m2659a(String str) {
        Map<String, Object> map = this.f21820a;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    /* renamed from: a */
    public abstract String mo2640a();

    /* renamed from: a */
    public synchronized Collection<C6206gx> m2663a() {
        if (this.f21819a == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(new ArrayList(this.f21819a));
    }

    /* renamed from: a */
    public void m2662a(C6206gx c6206gx) {
        this.f21819a.add(c6206gx);
    }

    /* renamed from: a */
    public void m2661a(C6217he c6217he) {
        this.f21818a = c6217he;
    }

    /* renamed from: b */
    public synchronized Collection<String> m2657b() {
        if (this.f21820a == null) {
            return Collections.emptySet();
        }
        return Collections.unmodifiableSet(new HashSet(this.f21820a.keySet()));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AbstractC6211ha abstractC6211ha = (AbstractC6211ha) obj;
        C6217he c6217he = this.f21818a;
        if (c6217he == null ? abstractC6211ha.f21818a == null : c6217he.equals(abstractC6211ha.f21818a)) {
            String str = this.f21824g;
            if (str == null ? abstractC6211ha.f21824g == null : str.equals(abstractC6211ha.f21824g)) {
                if (this.f21819a.equals(abstractC6211ha.f21819a)) {
                    String str2 = this.f21822e;
                    if (str2 == null ? abstractC6211ha.f21822e == null : str2.equals(abstractC6211ha.f21822e)) {
                        String str3 = this.f21825h;
                        if (str3 == null ? abstractC6211ha.f21825h == null : str3.equals(abstractC6211ha.f21825h)) {
                            Map<String, Object> map = this.f21820a;
                            if (map == null ? abstractC6211ha.f21820a == null : map.equals(abstractC6211ha.f21820a)) {
                                String str4 = this.f21823f;
                                if (str4 == null ? abstractC6211ha.f21823f == null : str4.equals(abstractC6211ha.f21823f)) {
                                    String str5 = this.f21821d;
                                    String str6 = abstractC6211ha.f21821d;
                                    if (str5 != null) {
                                        if (str5.equals(str6)) {
                                            return true;
                                        }
                                    } else if (str6 == null) {
                                        return true;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f21821d;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f21822e;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f21823f;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f21824g;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f21825h;
        int hashCode5 = (((((hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.f21819a.hashCode()) * 31) + this.f21820a.hashCode()) * 31;
        C6217he c6217he = this.f21818a;
        return hashCode5 + (c6217he != null ? c6217he.hashCode() : 0);
    }

    /* renamed from: j */
    public String m2655j() {
        if ("ID_NOT_AVAILABLE".equals(this.f21822e)) {
            return null;
        }
        if (this.f21822e == null) {
            this.f21822e = m2656i();
        }
        return this.f21822e;
    }

    /* renamed from: k */
    public String m2654k() {
        return this.f21825h;
    }

    /* renamed from: k */
    public void m2653k(String str) {
        this.f21822e = str;
    }

    /* renamed from: l */
    public String m2652l() {
        return this.f21823f;
    }

    /* renamed from: l */
    public void m2651l(String str) {
        this.f21825h = str;
    }

    /* renamed from: m */
    public String m2650m() {
        return this.f21824g;
    }

    /* renamed from: m */
    public void m2649m(String str) {
        this.f21823f = str;
    }

    /* renamed from: n */
    public String m2648n() {
        return this.f21826i;
    }

    /* renamed from: n */
    public void m2647n(String str) {
        this.f21824g = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:100:0x010d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0105 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized String m2646o() {
        StringBuilder sb;
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        Exception e;
        String str;
        sb = new StringBuilder();
        for (C6206gx c6206gx : m2663a()) {
            sb.append(c6206gx.mo2642d());
        }
        Map<String, Object> map = this.f21820a;
        if (map != null && !map.isEmpty()) {
            sb.append("<properties xmlns=\"http://www.jivesoftware.com/xmlns/xmpp/properties\">");
            for (String str2 : m2657b()) {
                Object m2659a = m2659a(str2);
                sb.append("<property>");
                sb.append("<name>");
                sb.append(C6225hl.m2611a(str2));
                sb.append("</name>");
                sb.append("<value type=\"");
                if (m2659a instanceof Integer) {
                    sb.append("integer\">");
                    sb.append(m2659a);
                    str = "</value>";
                } else if (m2659a instanceof Long) {
                    sb.append("long\">");
                    sb.append(m2659a);
                    str = "</value>";
                } else if (m2659a instanceof Float) {
                    sb.append("float\">");
                    sb.append(m2659a);
                    str = "</value>";
                } else if (m2659a instanceof Double) {
                    sb.append("double\">");
                    sb.append(m2659a);
                    str = "</value>";
                } else if (m2659a instanceof Boolean) {
                    sb.append("boolean\">");
                    sb.append(m2659a);
                    str = "</value>";
                } else if (m2659a instanceof String) {
                    sb.append("string\">");
                    sb.append(C6225hl.m2611a((String) m2659a));
                    str = "</value>";
                } else {
                    ObjectOutputStream objectOutputStream2 = null;
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                    } catch (Exception e2) {
                        e = e2;
                        byteArrayOutputStream = null;
                        objectOutputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        byteArrayOutputStream = null;
                    }
                    try {
                        objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                    } catch (Exception e3) {
                        e = e3;
                        objectOutputStream = null;
                        e = e;
                        e.printStackTrace();
                        if (objectOutputStream != null) {
                        }
                        if (byteArrayOutputStream == null) {
                        }
                        byteArrayOutputStream.close();
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        try {
                            objectOutputStream.writeObject(m2659a);
                            sb.append("java-object\">");
                            sb.append(C6225hl.m2609a(byteArrayOutputStream.toByteArray()));
                            sb.append("</value>");
                            try {
                                objectOutputStream.close();
                            } catch (Exception unused) {
                            }
                        } catch (Exception e4) {
                            e = e4;
                            e.printStackTrace();
                            if (objectOutputStream != null) {
                                try {
                                    objectOutputStream.close();
                                } catch (Exception unused2) {
                                }
                            }
                            if (byteArrayOutputStream == null) {
                                sb.append("</property>");
                            }
                            byteArrayOutputStream.close();
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused3) {
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        objectOutputStream2 = objectOutputStream;
                        if (objectOutputStream2 != null) {
                            try {
                                objectOutputStream2.close();
                            } catch (Exception unused4) {
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception unused5) {
                            }
                        }
                        throw th;
                    }
                }
                sb.append(str);
                sb.append("</property>");
            }
            sb.append("</properties>");
        }
        return sb.toString();
    }

    /* renamed from: o */
    public void m2645o(String str) {
        this.f21826i = str;
    }

    /* renamed from: p */
    public String m2644p() {
        return this.f21821d;
    }
}
