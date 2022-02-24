package com.ifengyu.intercom.ui.map;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class TilePoint implements Parcelable {
    public static final Parcelable.Creator<TilePoint> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private int f6496a;

    /* renamed from: b  reason: collision with root package name */
    private int f6497b;

    /* renamed from: c  reason: collision with root package name */
    private int f6498c;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<TilePoint> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TilePoint createFromParcel(Parcel parcel) {
            return new TilePoint(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TilePoint[] newArray(int i) {
            return new TilePoint[i];
        }
    }

    public TilePoint(int i, int i2, int i3) {
        this.f6496a = i;
        this.f6497b = i2;
        this.f6498c = i3;
    }

    public int a() {
        return this.f6496a;
    }

    public int b() {
        return this.f6497b;
    }

    public int c() {
        return this.f6498c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f6496a);
        parcel.writeInt(this.f6497b);
        parcel.writeInt(this.f6498c);
    }

    public TilePoint(Parcel parcel) {
        this.f6496a = parcel.readInt();
        this.f6497b = parcel.readInt();
        this.f6498c = parcel.readInt();
    }
}
