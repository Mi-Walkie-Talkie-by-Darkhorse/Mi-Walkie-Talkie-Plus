package com.github.mikephil.charting.data;

import android.os.Parcel;
import android.os.ParcelFormatException;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Entry extends e implements Parcelable {
    public static final Creator<Entry> CREATOR = new Creator<Entry>() {
        /* renamed from: a */
        public Entry createFromParcel(Parcel parcel) {
            return new Entry(parcel);
        }

        /* renamed from: a */
        public Entry[] newArray(int i) {
            return new Entry[i];
        }
    };
    private float a = 0.0f;

    public Entry() {
    }

    public Entry(float f, float f2) {
        super(f2);
        this.a = f;
    }

    public float h() {
        return this.a;
    }

    public String toString() {
        return "Entry, x: " + this.a + " y: " + b();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.a);
        parcel.writeFloat(b());
        if (g() == null) {
            parcel.writeInt(0);
        } else if (g() instanceof Parcelable) {
            parcel.writeInt(1);
            parcel.writeParcelable((Parcelable) g(), i);
        } else {
            throw new ParcelFormatException("Cannot parcel an Entry with non-parcelable data");
        }
    }

    protected Entry(Parcel parcel) {
        this.a = parcel.readFloat();
        a(parcel.readFloat());
        if (parcel.readInt() == 1) {
            a((Object) parcel.readParcelable(Object.class.getClassLoader()));
        }
    }
}
