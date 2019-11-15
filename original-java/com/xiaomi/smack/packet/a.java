package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.xiaomi.smack.util.d;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class a implements e {
    private String a;
    private String b;
    private String[] c = null;
    private String[] d = null;
    private String e;
    private List<a> f = null;

    public a(String str, String str2, String[] strArr, String[] strArr2) {
        this.a = str;
        this.b = str2;
        this.c = strArr;
        this.d = strArr2;
    }

    public a(String str, String str2, String[] strArr, String[] strArr2, String str3, List<a> list) {
        this.a = str;
        this.b = str2;
        this.c = strArr;
        this.d = strArr2;
        this.e = str3;
        this.f = list;
    }

    public static a a(Bundle bundle) {
        List list;
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
            list = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                list.add(a((Bundle) parcelable));
            }
        } else {
            list = null;
        }
        return new a(string, string2, strArr, strArr2, string3, list);
    }

    public static Parcelable[] a(List<a> list) {
        return a((a[]) list.toArray(new a[list.size()]));
    }

    public static Parcelable[] a(a[] aVarArr) {
        if (aVarArr == null) {
            return null;
        }
        Parcelable[] parcelableArr = new Parcelable[aVarArr.length];
        for (int i = 0; i < aVarArr.length; i++) {
            parcelableArr[i] = aVarArr[i].f();
        }
        return parcelableArr;
    }

    public String a() {
        return this.a;
    }

    public String a(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        if (this.c != null) {
            for (int i = 0; i < this.c.length; i++) {
                if (str.equals(this.c[i])) {
                    return this.d[i];
                }
            }
        }
        return null;
    }

    public String b() {
        return this.b;
    }

    public void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.e = d.a(str);
        } else {
            this.e = str;
        }
    }

    public String c() {
        return !TextUtils.isEmpty(this.e) ? d.b(this.e) : this.e;
    }

    public String d() {
        StringBuilder sb = new StringBuilder();
        sb.append("<").append(this.a);
        if (!TextUtils.isEmpty(this.b)) {
            sb.append(Token.SEPARATOR).append("xmlns=").append("\"").append(this.b).append("\"");
        }
        if (this.c != null && this.c.length > 0) {
            for (int i = 0; i < this.c.length; i++) {
                if (!TextUtils.isEmpty(this.d[i])) {
                    sb.append(Token.SEPARATOR).append(this.c[i]).append("=\"").append(d.a(this.d[i])).append("\"");
                }
            }
        }
        if (!TextUtils.isEmpty(this.e)) {
            sb.append(">").append(this.e).append("</").append(this.a).append(">");
        } else if (this.f == null || this.f.size() <= 0) {
            sb.append("/>");
        } else {
            sb.append(">");
            for (a d2 : this.f) {
                sb.append(d2.d());
            }
            sb.append("</").append(this.a).append(">");
        }
        return sb.toString();
    }

    public Bundle e() {
        Bundle bundle = new Bundle();
        bundle.putString("ext_ele_name", this.a);
        bundle.putString("ext_ns", this.b);
        bundle.putString("ext_text", this.e);
        Bundle bundle2 = new Bundle();
        if (this.c != null && this.c.length > 0) {
            for (int i = 0; i < this.c.length; i++) {
                bundle2.putString(this.c[i], this.d[i]);
            }
        }
        bundle.putBundle("attributes", bundle2);
        if (this.f != null && this.f.size() > 0) {
            bundle.putParcelableArray("children", a(this.f));
        }
        return bundle;
    }

    public Parcelable f() {
        return e();
    }

    public String toString() {
        return d();
    }
}
