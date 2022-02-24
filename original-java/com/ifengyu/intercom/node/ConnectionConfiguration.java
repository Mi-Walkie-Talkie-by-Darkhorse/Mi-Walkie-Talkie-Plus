package com.ifengyu.intercom.node;

import android.os.Parcel;
import android.os.Parcelable;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.o;
import com.ifengyu.intercom.node.safeparcel.SafeParcelable;
import com.ifengyu.intercom.node.safeparcel.SafeReader;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class ConnectionConfiguration implements SafeParcelable {
    public static final Parcelable.Creator<ConnectionConfiguration> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final int f5832a;

    /* renamed from: b  reason: collision with root package name */
    private String f5833b;

    /* renamed from: c  reason: collision with root package name */
    private String f5834c;
    private boolean d;
    private boolean e;
    private String f;
    private int g;
    private int h;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<ConnectionConfiguration> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConnectionConfiguration createFromParcel(Parcel parcel) {
            int b2 = SafeReader.b(parcel);
            String str = null;
            String str2 = null;
            String str3 = null;
            int i = 0;
            boolean z = false;
            boolean z2 = false;
            int i2 = 1;
            int i3 = 0;
            while (parcel.dataPosition() < b2) {
                int a2 = SafeReader.a(parcel);
                switch (SafeReader.a(a2)) {
                    case 1:
                        i = SafeReader.b(parcel, a2);
                        break;
                    case 2:
                        str = SafeReader.d(parcel, a2);
                        break;
                    case 3:
                        str2 = SafeReader.d(parcel, a2);
                        break;
                    case 4:
                        z = SafeReader.a(parcel, a2);
                        break;
                    case 5:
                        z2 = SafeReader.a(parcel, a2);
                        break;
                    case 6:
                        str3 = SafeReader.d(parcel, a2);
                        break;
                    case 7:
                        i2 = SafeReader.b(parcel, a2);
                        break;
                    case 8:
                        i3 = SafeReader.b(parcel, a2);
                        break;
                    default:
                        SafeReader.e(parcel, a2);
                        break;
                }
            }
            if (parcel.dataPosition() == b2) {
                return new ConnectionConfiguration(i, str, str2, z, z2, str3, i2, i3);
            }
            throw new SafeReader.ReadException("Overread allowed size end=" + b2, parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConnectionConfiguration[] newArray(int i) {
            return new ConnectionConfiguration[i];
        }
    }

    ConnectionConfiguration(int i, String str, String str2, boolean z, boolean z2, String str3, int i2, int i3) {
        this.f5832a = i;
        this.f5833b = str;
        this.f5834c = str2;
        this.e = z;
        this.d = z2;
        this.f = str3;
        this.g = i2;
        this.h = i3;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public void b(boolean z) {
        this.e = z;
    }

    public void c(String str) {
        if (str != null) {
            this.d = true;
            this.f = str;
            return;
        }
        this.d = false;
    }

    public String d() {
        return this.f5833b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.f;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ConnectionConfiguration)) {
            return false;
        }
        ConnectionConfiguration connectionConfiguration = (ConnectionConfiguration) obj;
        return o.b(Integer.valueOf(this.f5832a), Integer.valueOf(connectionConfiguration.f5832a)) && o.b(this.f5833b, connectionConfiguration.f5833b) && o.b(this.f5834c, connectionConfiguration.f5834c) && o.b(Boolean.valueOf(this.e), Boolean.valueOf(connectionConfiguration.e));
    }

    public boolean f() {
        return this.d;
    }

    public boolean g() {
        return this.e;
    }

    public int hashCode() {
        Object[] objArr = new Object[9];
        objArr[0] = Integer.valueOf(this.f5832a);
        objArr[1] = this.f5833b;
        objArr[2] = this.f5834c;
        objArr[3] = Boolean.valueOf(this.e);
        return Arrays.hashCode(objArr);
    }

    public String toString() {
        return "ConnectionConfiguration[mName=" + this.f5833b + ", mAddress=" + this.f5834c + ", mDeviceType=" + this.g + ", mColor=" + this.h + ", mEnabled=" + this.e + ", mIsConnected=" + this.d + ", nodeId=" + this.f + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = com.ifengyu.intercom.node.safeparcel.a.a(parcel);
        com.ifengyu.intercom.node.safeparcel.a.a(parcel, 1, this.f5832a);
        com.ifengyu.intercom.node.safeparcel.a.a(parcel, 2, this.f5833b, false);
        com.ifengyu.intercom.node.safeparcel.a.a(parcel, 3, this.f5834c, false);
        com.ifengyu.intercom.node.safeparcel.a.a(parcel, 4, this.e);
        com.ifengyu.intercom.node.safeparcel.a.a(parcel, 5, this.d);
        com.ifengyu.intercom.node.safeparcel.a.a(parcel, 6, this.f, true);
        com.ifengyu.intercom.node.safeparcel.a.a(parcel, 7, this.g);
        com.ifengyu.intercom.node.safeparcel.a.a(parcel, 8, this.h);
        com.ifengyu.intercom.node.safeparcel.a.a(parcel, a2);
    }

    public String a() {
        return this.f5834c;
    }

    public void b(int i) {
        this.g = i;
    }

    public void a(String str) {
        this.f5834c = str;
    }

    public int b() {
        return this.h;
    }

    public void a(int i) {
        this.h = i;
    }

    public void b(String str) {
        this.f5833b = str;
    }

    public int c() {
        return this.g;
    }

    public ConnectionConfiguration(String str, String str2, boolean z) {
        this(d0.f5308a, str, str2, z, false, null, 1, 0);
    }

    public ConnectionConfiguration(String str, String str2, boolean z, int i) {
        this(d0.f5308a, str, str2, z, false, null, i, 0);
    }

    public ConnectionConfiguration(String str, String str2, boolean z, String str3, int i, int i2) {
        this(d0.f5308a, str, str2, z, false, str3, i, i2);
    }
}
