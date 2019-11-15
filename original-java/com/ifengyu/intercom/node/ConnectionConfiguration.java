package com.ifengyu.intercom.node;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.ifengyu.intercom.b.k;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.node.safeparcel.SafeParcelable;
import com.ifengyu.intercom.node.safeparcel.SafeReader;
import com.ifengyu.intercom.node.safeparcel.SafeReader.ReadException;
import com.ifengyu.intercom.node.safeparcel.a;
import java.util.Arrays;

public class ConnectionConfiguration implements SafeParcelable {
    public static final Creator<ConnectionConfiguration> CREATOR = new Creator<ConnectionConfiguration>() {
        /* renamed from: a */
        public ConnectionConfiguration createFromParcel(Parcel parcel) {
            String str = null;
            int i = 0;
            int b = SafeReader.b(parcel);
            int i2 = 1;
            boolean z = false;
            boolean z2 = false;
            String str2 = null;
            String str3 = null;
            int i3 = 0;
            while (parcel.dataPosition() < b) {
                int a = SafeReader.a(parcel);
                switch (SafeReader.a(a)) {
                    case 1:
                        i3 = SafeReader.a(parcel, a);
                        break;
                    case 2:
                        str3 = SafeReader.c(parcel, a);
                        break;
                    case 3:
                        str2 = SafeReader.c(parcel, a);
                        break;
                    case 4:
                        z = SafeReader.b(parcel, a);
                        break;
                    case 5:
                        z2 = SafeReader.b(parcel, a);
                        break;
                    case 6:
                        str = SafeReader.c(parcel, a);
                        break;
                    case 7:
                        i2 = SafeReader.a(parcel, a);
                        break;
                    case 8:
                        i = SafeReader.a(parcel, a);
                        break;
                    default:
                        SafeReader.d(parcel, a);
                        break;
                }
            }
            if (parcel.dataPosition() == b) {
                return new ConnectionConfiguration(i3, str3, str2, z, z2, str, i2, i);
            }
            throw new ReadException("Overread allowed size end=" + b, parcel);
        }

        /* renamed from: a */
        public ConnectionConfiguration[] newArray(int i) {
            return new ConnectionConfiguration[i];
        }
    };
    private final int a;
    private String b;
    private final String c;
    private boolean d;
    private boolean e;
    private String f;
    private int g;
    private int h;

    ConnectionConfiguration(int i, String str, String str2, boolean z, boolean z2, String str3, int i2, int i3) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.e = z;
        this.d = z2;
        this.f = str3;
        this.g = i2;
        this.h = i3;
    }

    public ConnectionConfiguration(String str, String str2, boolean z) {
        this(w.a, str, str2, z, false, null, 1, 0);
    }

    public ConnectionConfiguration(String str, String str2, boolean z, int i) {
        this(w.a, str, str2, z, false, null, i, 0);
    }

    public ConnectionConfiguration(String str, String str2, boolean z, String str3, int i, int i2) {
        this(w.a, str, str2, z, false, str3, i, i2);
    }

    public boolean a() {
        return this.d;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public boolean d() {
        return this.e;
    }

    public void b(boolean z) {
        this.e = z;
    }

    public String e() {
        return this.f;
    }

    public void a(String str) {
        if (str != null) {
            this.d = true;
            this.f = str;
            return;
        }
        this.d = false;
    }

    public int f() {
        return this.g;
    }

    public void a(int i) {
        this.g = i;
    }

    public int g() {
        return this.h;
    }

    public void b(int i) {
        this.h = i;
    }

    public void b(String str) {
        this.b = str;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.a);
        a.a(parcel, 2, this.b, false);
        a.a(parcel, 3, this.c, false);
        a.a(parcel, 4, this.e);
        a.a(parcel, 5, this.d);
        a.a(parcel, 6, this.f, true);
        a.a(parcel, 7, this.g);
        a.a(parcel, 8, this.h);
        a.a(parcel, a2);
    }

    public int hashCode() {
        Object[] objArr = new Object[9];
        objArr[0] = Integer.valueOf(this.a);
        objArr[1] = this.b;
        objArr[2] = this.c;
        objArr[3] = Boolean.valueOf(this.e);
        return Arrays.hashCode(objArr);
    }

    public boolean equals(Object obj) {
        if (obj instanceof ConnectionConfiguration) {
            ConnectionConfiguration connectionConfiguration = (ConnectionConfiguration) obj;
            if (k.b(Integer.valueOf(this.a), Integer.valueOf(connectionConfiguration.a)) && k.b(this.b, connectionConfiguration.b) && k.b(this.c, connectionConfiguration.c) && k.b(Boolean.valueOf(this.e), Boolean.valueOf(connectionConfiguration.e))) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ConnectionConfiguration[");
        sb.append("mName=").append(this.b).append(", mAddress=").append(this.c).append(", mDeviceType=").append(this.g).append(", mColor=").append(this.h).append(", mEnabled=").append(this.e).append(", mIsConnected=").append(this.d).append(", nodeId=").append(this.f).append("]");
        return sb.toString();
    }
}
