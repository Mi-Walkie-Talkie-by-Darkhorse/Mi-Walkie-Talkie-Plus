package com.xiaomi.push;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class gx implements hb {

    /* renamed from: a  reason: collision with root package name */
    private String f9008a;

    /* renamed from: a  reason: collision with other field name */
    private List<gx> f451a;

    /* renamed from: a  reason: collision with other field name */
    private String[] f452a;

    /* renamed from: b  reason: collision with root package name */
    private String f9009b;

    /* renamed from: b  reason: collision with other field name */
    private String[] f453b;

    /* renamed from: c  reason: collision with root package name */
    private String f9010c;

    public gx(String str, String str2, String[] strArr, String[] strArr2) {
        this.f452a = null;
        this.f453b = null;
        this.f451a = null;
        this.f9008a = str;
        this.f9009b = str2;
        this.f452a = strArr;
        this.f453b = strArr2;
    }

    public gx(String str, String str2, String[] strArr, String[] strArr2, String str3, List<gx> list) {
        this.f452a = null;
        this.f453b = null;
        this.f451a = null;
        this.f9008a = str;
        this.f9009b = str2;
        this.f452a = strArr;
        this.f453b = strArr2;
        this.f9010c = str3;
        this.f451a = list;
    }

    public static gx a(Bundle bundle) {
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
                arrayList2.add(a((Bundle) parcelable));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        return new gx(string, string2, strArr, strArr2, string3, arrayList);
    }

    public static Parcelable[] a(List<gx> list) {
        return a((gx[]) list.toArray(new gx[list.size()]));
    }

    public static Parcelable[] a(gx[] gxVarArr) {
        if (gxVarArr == null) {
            return null;
        }
        Parcelable[] parcelableArr = new Parcelable[gxVarArr.length];
        for (int i = 0; i < gxVarArr.length; i++) {
            parcelableArr[i] = gxVarArr[i].m329a();
        }
        return parcelableArr;
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("ext_ele_name", this.f9008a);
        bundle.putString("ext_ns", this.f9009b);
        bundle.putString("ext_text", this.f9010c);
        Bundle bundle2 = new Bundle();
        String[] strArr = this.f452a;
        if (strArr != null && strArr.length > 0) {
            int i = 0;
            while (true) {
                String[] strArr2 = this.f452a;
                if (i >= strArr2.length) {
                    break;
                }
                bundle2.putString(strArr2[i], this.f453b[i]);
                i++;
            }
        }
        bundle.putBundle("attributes", bundle2);
        List<gx> list = this.f451a;
        if (list != null && list.size() > 0) {
            bundle.putParcelableArray("children", a(this.f451a));
        }
        return bundle;
    }

    /* renamed from: a  reason: collision with other method in class */
    public Parcelable m329a() {
        return a();
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m330a() {
        return this.f9008a;
    }

    public String a(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        } else if (this.f452a == null) {
            return null;
        } else {
            int i = 0;
            while (true) {
                String[] strArr = this.f452a;
                if (i >= strArr.length) {
                    return null;
                }
                if (str.equals(strArr[i])) {
                    return this.f453b[i];
                }
                i++;
            }
        }
    }

    public void a(gx gxVar) {
        if (this.f451a == null) {
            this.f451a = new ArrayList();
        }
        if (!this.f451a.contains(gxVar)) {
            this.f451a.add(gxVar);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m331a(String str) {
        if (!TextUtils.isEmpty(str)) {
            str = hl.a(str);
        }
        this.f9010c = str;
    }

    public String b() {
        return this.f9009b;
    }

    public String c() {
        return !TextUtils.isEmpty(this.f9010c) ? hl.b(this.f9010c) : this.f9010c;
    }

    @Override // com.xiaomi.push.hb
    public String d() {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(this.f9008a);
        if (!TextUtils.isEmpty(this.f9009b)) {
            sb.append(" ");
            sb.append("xmlns=");
            sb.append("\"");
            sb.append(this.f9009b);
            sb.append("\"");
        }
        String[] strArr = this.f452a;
        if (strArr != null && strArr.length > 0) {
            for (int i = 0; i < this.f452a.length; i++) {
                if (!TextUtils.isEmpty(this.f453b[i])) {
                    sb.append(" ");
                    sb.append(this.f452a[i]);
                    sb.append("=\"");
                    sb.append(hl.a(this.f453b[i]));
                    sb.append("\"");
                }
            }
        }
        if (!TextUtils.isEmpty(this.f9010c)) {
            sb.append(">");
            sb.append(this.f9010c);
        } else {
            List<gx> list = this.f451a;
            if (list == null || list.size() <= 0) {
                sb.append("/>");
                return sb.toString();
            }
            sb.append(">");
            for (gx gxVar : this.f451a) {
                sb.append(gxVar.d());
            }
        }
        sb.append("</");
        sb.append(this.f9008a);
        sb.append(">");
        return sb.toString();
    }

    public String toString() {
        return d();
    }
}
