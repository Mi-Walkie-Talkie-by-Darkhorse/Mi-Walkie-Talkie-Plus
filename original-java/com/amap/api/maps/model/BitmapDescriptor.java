package com.amap.api.maps.model;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public final class BitmapDescriptor implements Parcelable, Cloneable {
    public static final BitmapDescriptorCreator CREATOR = new BitmapDescriptorCreator();
    int a = 0;
    int b = 0;
    Bitmap c;

    BitmapDescriptor(Bitmap bitmap) {
        if (bitmap != null) {
            this.a = bitmap.getWidth();
            this.b = bitmap.getHeight();
            if (bitmap.getConfig() == null) {
                this.c = bitmap.copy(Config.ARGB_8888, true);
            } else {
                this.c = bitmap.copy(bitmap.getConfig(), true);
            }
        }
    }

    private BitmapDescriptor(Bitmap bitmap, int i, int i2) {
        this.a = i;
        this.b = i2;
        this.c = bitmap;
    }

    public BitmapDescriptor clone() {
        try {
            return new BitmapDescriptor(this.c.copy(this.c.getConfig(), true), this.a, this.b);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public Bitmap getBitmap() {
        return this.c;
    }

    public int getWidth() {
        return this.a;
    }

    public int getHeight() {
        return this.b;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.c, i);
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
    }

    public void recycle() {
        if (this.c != null && !this.c.isRecycled()) {
            this.c.recycle();
            this.c = null;
        }
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (this.c == null || this.c.isRecycled() || obj == null) {
            return z;
        }
        if (this == obj) {
            return true;
        }
        if (getClass() != obj.getClass()) {
            return z;
        }
        BitmapDescriptor bitmapDescriptor = (BitmapDescriptor) obj;
        if (bitmapDescriptor.c == null || bitmapDescriptor.c.isRecycled() || this.a != bitmapDescriptor.getWidth() || this.b != bitmapDescriptor.getHeight()) {
            return z;
        }
        try {
            return this.c.sameAs(bitmapDescriptor.c);
        } catch (Throwable th) {
            return z;
        }
    }

    public int hashCode() {
        return super.hashCode();
    }
}
