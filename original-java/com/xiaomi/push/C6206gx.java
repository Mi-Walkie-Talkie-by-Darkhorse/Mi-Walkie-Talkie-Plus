package com.xiaomi.push;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* renamed from: com.xiaomi.push.gx */
/* loaded from: classes2.dex */
public class C6206gx implements InterfaceC6212hb {

    /* renamed from: a */
    private String f21785a;

    /* renamed from: a */
    private List<C6206gx> f21786a;

    /* renamed from: a */
    private String[] f21787a;

    /* renamed from: b */
    private String f21788b;

    /* renamed from: b */
    private String[] f21789b;

    /* renamed from: c */
    private String f21790c;

    public C6206gx(String str, String str2, String[] strArr, String[] strArr2) {
        this.f21787a = null;
        this.f21789b = null;
        this.f21786a = null;
        this.f21785a = str;
        this.f21788b = str2;
        this.f21787a = strArr;
        this.f21789b = strArr2;
    }

    public C6206gx(String str, String str2, String[] strArr, String[] strArr2, String str3, List<C6206gx> list) {
        this.f21787a = null;
        this.f21789b = null;
        this.f21786a = null;
        this.f21785a = str;
        this.f21788b = str2;
        this.f21787a = strArr;
        this.f21789b = strArr2;
        this.f21790c = str3;
        this.f21786a = list;
    }

    /* renamed from: a */
    public static C6206gx m2699a(Bundle bundle) {
        ArrayList arrayList;
        String string = bundle.getString("ext_ele_name");
        String string2 = bundle.getString("ext_ns");
        String string3 = bundle.getString("ext_text");
        Bundle bundle2 = bundle.getBundle("attributes");
        Set<String> keySet = bundle2.keySet();
        String[] strArr = new String[keySet.size()];
        String[] strArr2 = new String[keySet.size()];
        int i = 0;
        for (String str : keySet) {
            strArr[i] = str;
            strArr2[i] = bundle2.getString(str);
            i++;
        }
        if (bundle.containsKey("children")) {
            Parcelable[] parcelableArray = bundle.getParcelableArray("children");
            ArrayList arrayList2 = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                arrayList2.add(m2699a((Bundle) parcelable));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        return new C6206gx(string, string2, strArr, strArr2, string3, arrayList);
    }

    /* renamed from: a */
    public static Parcelable[] m2695a(List<C6206gx> list) {
        return m2694a((C6206gx[]) list.toArray(new C6206gx[list.size()]));
    }

    /* renamed from: a */
    public static Parcelable[] m2694a(C6206gx[] c6206gxArr) {
        if (c6206gxArr == null) {
            return null;
        }
        Parcelable[] parcelableArr = new Parcelable[c6206gxArr.length];
        for (int i = 0; i < c6206gxArr.length; i++) {
            parcelableArr[i] = c6206gxArr[i].m2701a();
        }
        return parcelableArr;
    }

    /* renamed from: a */
    public Bundle m2702a() {
        Bundle bundle = new Bundle();
        bundle.putString("ext_ele_name", this.f21785a);
        bundle.putString("ext_ns", this.f21788b);
        bundle.putString("ext_text", this.f21790c);
        Bundle bundle2 = new Bundle();
        String[] strArr = this.f21787a;
        if (strArr != null && strArr.length > 0) {
            int i = 0;
            while (true) {
                String[] strArr2 = this.f21787a;
                if (i >= strArr2.length) {
                    break;
                }
                bundle2.putString(strArr2[i], this.f21789b[i]);
                i++;
            }
        }
        bundle.putBundle("attributes", bundle2);
        List<C6206gx> list = this.f21786a;
        if (list != null && list.size() > 0) {
            bundle.putParcelableArray("children", m2695a(this.f21786a));
        }
        return bundle;
    }

    /* renamed from: a */
    public Parcelable m2701a() {
        return m2702a();
    }

    /* renamed from: a */
    public String m2700a() {
        return this.f21785a;
    }

    /* renamed from: a */
    public String m2697a(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        if (this.f21787a == null) {
            return null;
        }
        int i = 0;
        while (true) {
            String[] strArr = this.f21787a;
            if (i >= strArr.length) {
                return null;
            }
            if (str.equals(strArr[i])) {
                return this.f21789b[i];
            }
            i++;
        }
    }

    /* renamed from: a */
    public void m2698a(C6206gx c6206gx) {
        if (this.f21786a == null) {
            this.f21786a = new ArrayList();
        }
        if (this.f21786a.contains(c6206gx)) {
            return;
        }
        this.f21786a.add(c6206gx);
    }

    /* renamed from: a */
    public void m2696a(String str) {
        if (!TextUtils.isEmpty(str)) {
            str = C6225hl.m2611a(str);
        }
        this.f21790c = str;
    }

    /* renamed from: b */
    public String m2693b() {
        return this.f21788b;
    }

    /* renamed from: c */
    public String m2692c() {
        return !TextUtils.isEmpty(this.f21790c) ? C6225hl.m2608b(this.f21790c) : this.f21790c;
    }

    @Override // com.xiaomi.push.InterfaceC6212hb
    /* renamed from: d */
    public String mo2642d() {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(this.f21785a);
        if (!TextUtils.isEmpty(this.f21788b)) {
            sb.append(" ");
            sb.append("xmlns=");
            sb.append("\"");
            sb.append(this.f21788b);
            sb.append("\"");
        }
        String[] strArr = this.f21787a;
        if (strArr != null && strArr.length > 0) {
            for (int i = 0; i < this.f21787a.length; i++) {
                if (!TextUtils.isEmpty(this.f21789b[i])) {
                    sb.append(" ");
                    sb.append(this.f21787a[i]);
                    sb.append("=\"");
                    sb.append(C6225hl.m2611a(this.f21789b[i]));
                    sb.append("\"");
                }
            }
        }
        if (TextUtils.isEmpty(this.f21790c)) {
            List<C6206gx> list = this.f21786a;
            if (list == null || list.size() <= 0) {
                sb.append("/>");
                return sb.toString();
            }
            sb.append(">");
            for (C6206gx c6206gx : this.f21786a) {
                sb.append(c6206gx.mo2642d());
            }
        } else {
            sb.append(">");
            sb.append(this.f21790c);
        }
        sb.append("</");
        sb.append(this.f21785a);
        sb.append(">");
        return sb.toString();
    }

    public String toString() {
        return mo2642d();
    }
}
