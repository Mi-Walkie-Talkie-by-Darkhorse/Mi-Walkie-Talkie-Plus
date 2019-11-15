package com.amap.api.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.col.sl.fq;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class AMapLocationClientOption implements Parcelable, Cloneable {
    public static final Creator<AMapLocationClientOption> CREATOR = new Creator<AMapLocationClientOption>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new AMapLocationClientOption(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new AMapLocationClientOption[i];
        }
    };
    static String a = "";
    private static AMapLocationProtocol j = AMapLocationProtocol.HTTP;
    private static boolean t = true;
    private long b = 2000;
    private long c = ((long) fq.f);
    private boolean d = false;
    private boolean e = true;
    private boolean f = true;
    private boolean g = true;
    private boolean h = true;
    private AMapLocationMode i = AMapLocationMode.Hight_Accuracy;
    private boolean k = false;
    private boolean l = false;
    private boolean m = true;
    private boolean n = true;
    private boolean o = false;
    private boolean p = false;
    private boolean q = true;
    private long r = 30000;
    private GeoLanguage s = GeoLanguage.DEFAULT;
    private float u = 0.0f;
    private AMapLocationPurpose v = null;

    public enum AMapLocationMode {
        Battery_Saving,
        Device_Sensors,
        Hight_Accuracy
    }

    public enum AMapLocationProtocol {
        HTTP(0),
        HTTPS(1);
        
        private int a;

        private AMapLocationProtocol(int i) {
            this.a = i;
        }

        public final int getValue() {
            return this.a;
        }
    }

    public enum AMapLocationPurpose {
        SignIn,
        Transport,
        Sport
    }

    public enum GeoLanguage {
        DEFAULT,
        ZH,
        EN
    }

    public static String getAPIKEY() {
        return a;
    }

    public boolean isMockEnable() {
        return this.e;
    }

    public AMapLocationClientOption setMockEnable(boolean z) {
        this.e = z;
        return this;
    }

    public long getInterval() {
        return this.b;
    }

    public AMapLocationClientOption setInterval(long j2) {
        if (j2 <= 800) {
            j2 = 800;
        }
        this.b = j2;
        return this;
    }

    public boolean isOnceLocation() {
        return this.d;
    }

    public AMapLocationClientOption setOnceLocation(boolean z) {
        this.d = z;
        return this;
    }

    public boolean isNeedAddress() {
        return this.f;
    }

    public AMapLocationClientOption setNeedAddress(boolean z) {
        this.f = z;
        return this;
    }

    public boolean isWifiActiveScan() {
        return this.g;
    }

    public AMapLocationClientOption setWifiActiveScan(boolean z) {
        this.g = z;
        this.h = z;
        return this;
    }

    public boolean isWifiScan() {
        return this.q;
    }

    public AMapLocationClientOption setWifiScan(boolean z) {
        this.q = z;
        if (this.q) {
            this.g = this.h;
        } else {
            this.g = false;
        }
        return this;
    }

    public AMapLocationMode getLocationMode() {
        return this.i;
    }

    public AMapLocationClientOption setLocationMode(AMapLocationMode aMapLocationMode) {
        this.i = aMapLocationMode;
        return this;
    }

    public AMapLocationProtocol getLocationProtocol() {
        return j;
    }

    public static void setLocationProtocol(AMapLocationProtocol aMapLocationProtocol) {
        j = aMapLocationProtocol;
    }

    public boolean isKillProcess() {
        return this.k;
    }

    public AMapLocationClientOption setKillProcess(boolean z) {
        this.k = z;
        return this;
    }

    public boolean isGpsFirst() {
        return this.l;
    }

    public AMapLocationClientOption setGpsFirst(boolean z) {
        this.l = z;
        return this;
    }

    public AMapLocationClientOption clone() {
        try {
            super.clone();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
        aMapLocationClientOption.b = this.b;
        aMapLocationClientOption.d = this.d;
        aMapLocationClientOption.i = this.i;
        aMapLocationClientOption.e = this.e;
        aMapLocationClientOption.k = this.k;
        aMapLocationClientOption.l = this.l;
        aMapLocationClientOption.f = this.f;
        aMapLocationClientOption.g = this.g;
        aMapLocationClientOption.c = this.c;
        aMapLocationClientOption.m = this.m;
        aMapLocationClientOption.n = this.n;
        aMapLocationClientOption.o = this.o;
        aMapLocationClientOption.p = isSensorEnable();
        aMapLocationClientOption.q = isWifiScan();
        aMapLocationClientOption.r = this.r;
        aMapLocationClientOption.s = this.s;
        aMapLocationClientOption.u = this.u;
        aMapLocationClientOption.v = this.v;
        return aMapLocationClientOption;
    }

    public long getHttpTimeOut() {
        return this.c;
    }

    public AMapLocationClientOption setHttpTimeOut(long j2) {
        this.c = j2;
        return this;
    }

    public boolean isOffset() {
        return this.m;
    }

    public AMapLocationClientOption setOffset(boolean z) {
        this.m = z;
        return this;
    }

    public boolean isLocationCacheEnable() {
        return this.n;
    }

    public AMapLocationClientOption setLocationCacheEnable(boolean z) {
        this.n = z;
        return this;
    }

    public boolean isOnceLocationLatest() {
        return this.o;
    }

    public AMapLocationClientOption setOnceLocationLatest(boolean z) {
        this.o = z;
        return this;
    }

    public boolean isSensorEnable() {
        return this.p;
    }

    public AMapLocationClientOption setSensorEnable(boolean z) {
        this.p = z;
        return this;
    }

    public AMapLocationClientOption setLastLocationLifeCycle(long j2) {
        this.r = j2;
        return this;
    }

    public long getLastLocationLifeCycle() {
        return this.r;
    }

    public GeoLanguage getGeoLanguage() {
        return this.s;
    }

    public AMapLocationClientOption setGeoLanguage(GeoLanguage geoLanguage) {
        this.s = geoLanguage;
        return this;
    }

    public static void setDownloadCoordinateConvertLibrary(boolean z) {
        t = z;
    }

    public static boolean isDownloadCoordinateConvertLibrary() {
        return t;
    }

    public float getDeviceModeDistanceFilter() {
        return this.u;
    }

    public AMapLocationClientOption setDeviceModeDistanceFilter(float f2) {
        this.u = f2;
        return this;
    }

    public AMapLocationClientOption setLocationPurpose(AMapLocationPurpose aMapLocationPurpose) {
        this.v = aMapLocationPurpose;
        if (aMapLocationPurpose != null) {
            switch (aMapLocationPurpose) {
                case SignIn:
                    this.i = AMapLocationMode.Hight_Accuracy;
                    this.d = true;
                    this.o = true;
                    this.l = false;
                    this.e = false;
                    this.q = true;
                    break;
                case Transport:
                case Sport:
                    this.i = AMapLocationMode.Hight_Accuracy;
                    this.d = false;
                    this.o = false;
                    this.l = true;
                    this.e = false;
                    this.q = true;
                    break;
            }
        }
        return this;
    }

    public AMapLocationPurpose getLocationPurpose() {
        return this.v;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("interval:").append(String.valueOf(this.b)).append("#");
        sb.append("isOnceLocation:").append(String.valueOf(this.d)).append("#");
        sb.append("locationMode:").append(String.valueOf(this.i)).append("#");
        sb.append("locationProtocol:").append(String.valueOf(j)).append("#");
        sb.append("isMockEnable:").append(String.valueOf(this.e)).append("#");
        sb.append("isKillProcess:").append(String.valueOf(this.k)).append("#");
        sb.append("isGpsFirst:").append(String.valueOf(this.l)).append("#");
        sb.append("isNeedAddress:").append(String.valueOf(this.f)).append("#");
        sb.append("isWifiActiveScan:").append(String.valueOf(this.g)).append("#");
        sb.append("wifiScan:").append(String.valueOf(this.q)).append("#");
        sb.append("httpTimeOut:").append(String.valueOf(this.c)).append("#");
        sb.append("isLocationCacheEnable:").append(String.valueOf(this.n)).append("#");
        sb.append("isOnceLocationLatest:").append(String.valueOf(this.o)).append("#");
        sb.append("sensorEnable:").append(String.valueOf(this.p)).append("#");
        sb.append("geoLanguage:").append(String.valueOf(this.s)).append("#");
        sb.append("locationPurpose:").append(String.valueOf(this.v)).append("#");
        return sb.toString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        byte b7;
        byte b8;
        byte b9;
        byte b10;
        byte b11;
        byte b12;
        int i3 = -1;
        byte b13 = 1;
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
        parcel.writeByte(this.d ? (byte) 1 : 0);
        if (this.e) {
            b2 = 1;
        } else {
            b2 = 0;
        }
        parcel.writeByte(b2);
        if (this.f) {
            b3 = 1;
        } else {
            b3 = 0;
        }
        parcel.writeByte(b3);
        if (this.g) {
            b4 = 1;
        } else {
            b4 = 0;
        }
        parcel.writeByte(b4);
        if (this.h) {
            b5 = 1;
        } else {
            b5 = 0;
        }
        parcel.writeByte(b5);
        parcel.writeInt(this.i == null ? -1 : this.i.ordinal());
        if (this.k) {
            b6 = 1;
        } else {
            b6 = 0;
        }
        parcel.writeByte(b6);
        if (this.l) {
            b7 = 1;
        } else {
            b7 = 0;
        }
        parcel.writeByte(b7);
        if (this.m) {
            b8 = 1;
        } else {
            b8 = 0;
        }
        parcel.writeByte(b8);
        if (this.n) {
            b9 = 1;
        } else {
            b9 = 0;
        }
        parcel.writeByte(b9);
        if (this.o) {
            b10 = 1;
        } else {
            b10 = 0;
        }
        parcel.writeByte(b10);
        if (this.p) {
            b11 = 1;
        } else {
            b11 = 0;
        }
        parcel.writeByte(b11);
        if (this.q) {
            b12 = 1;
        } else {
            b12 = 0;
        }
        parcel.writeByte(b12);
        parcel.writeLong(this.r);
        parcel.writeInt(j == null ? -1 : getLocationProtocol().ordinal());
        parcel.writeInt(this.s == null ? -1 : this.s.ordinal());
        if (!t) {
            b13 = 0;
        }
        parcel.writeByte(b13);
        parcel.writeFloat(this.u);
        if (this.v != null) {
            i3 = this.v.ordinal();
        }
        parcel.writeInt(i3);
    }

    public AMapLocationClientOption() {
    }

    protected AMapLocationClientOption(Parcel parcel) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12 = true;
        this.b = parcel.readLong();
        this.c = parcel.readLong();
        this.d = parcel.readByte() != 0;
        if (parcel.readByte() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.e = z;
        if (parcel.readByte() != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f = z2;
        if (parcel.readByte() != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.g = z3;
        if (parcel.readByte() != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        this.h = z4;
        int readInt = parcel.readInt();
        this.i = readInt == -1 ? AMapLocationMode.Hight_Accuracy : AMapLocationMode.values()[readInt];
        if (parcel.readByte() != 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        this.k = z5;
        if (parcel.readByte() != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.l = z6;
        if (parcel.readByte() != 0) {
            z7 = true;
        } else {
            z7 = false;
        }
        this.m = z7;
        if (parcel.readByte() != 0) {
            z8 = true;
        } else {
            z8 = false;
        }
        this.n = z8;
        if (parcel.readByte() != 0) {
            z9 = true;
        } else {
            z9 = false;
        }
        this.o = z9;
        if (parcel.readByte() != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.p = z10;
        if (parcel.readByte() != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.q = z11;
        this.r = parcel.readLong();
        int readInt2 = parcel.readInt();
        j = readInt2 == -1 ? AMapLocationProtocol.HTTP : AMapLocationProtocol.values()[readInt2];
        int readInt3 = parcel.readInt();
        this.s = readInt3 == -1 ? GeoLanguage.DEFAULT : GeoLanguage.values()[readInt3];
        if (parcel.readByte() == 0) {
            z12 = false;
        }
        t = z12;
        this.u = parcel.readFloat();
        int readInt4 = parcel.readInt();
        this.v = readInt4 == -1 ? null : AMapLocationPurpose.values()[readInt4];
    }
}
