package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.List;

public class PolygonHoleOptions extends BaseHoleOptions implements Parcelable {
    public static final Creator<PolygonHoleOptions> CREATOR = new Creator<PolygonHoleOptions>() {
        /* renamed from: a */
        public PolygonHoleOptions createFromParcel(Parcel parcel) {
            return new PolygonHoleOptions(parcel);
        }

        /* renamed from: a */
        public PolygonHoleOptions[] newArray(int i) {
            return new PolygonHoleOptions[i];
        }
    };
    private final List<LatLng> a;

    public PolygonHoleOptions() {
        this.a = new ArrayList();
    }

    protected PolygonHoleOptions(Parcel parcel) {
        this.a = parcel.createTypedArrayList(LatLng.CREATOR);
    }

    public PolygonHoleOptions addAll(Iterable<LatLng> iterable) {
        try {
            for (LatLng add : iterable) {
                this.a.add(add);
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return this;
    }

    public List<LatLng> getPoints() {
        return this.a;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.a);
    }
}
