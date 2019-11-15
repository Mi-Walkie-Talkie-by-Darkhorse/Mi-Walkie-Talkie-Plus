package com.amap.api.maps.model;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class VisibleRegionCreator implements Creator<VisibleRegion> {
    public static final int CONTENT_DESCRIPTION = 0;

    public VisibleRegion createFromParcel(Parcel parcel) {
        LatLng latLng;
        LatLng latLng2;
        LatLng latLng3;
        LatLng latLng4;
        LatLng latLng5;
        LatLngBounds latLngBounds = null;
        int readInt = parcel.readInt();
        try {
            LatLng latLng6 = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
            try {
                LatLng latLng7 = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
                try {
                    latLng5 = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
                } catch (BadParcelableException e) {
                    latLng = null;
                    latLng2 = null;
                    Throwable th = e;
                    latLng3 = latLng7;
                    latLng4 = latLng6;
                    e = th;
                    ThrowableExtension.printStackTrace(e);
                    return new VisibleRegion(readInt, latLng4, latLng3, latLng2, latLng, latLngBounds);
                }
                try {
                    LatLng latLng8 = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
                    try {
                        latLngBounds = (LatLngBounds) parcel.readParcelable(LatLngBounds.class.getClassLoader());
                        latLng = latLng8;
                        latLng2 = latLng5;
                        latLng3 = latLng7;
                        latLng4 = latLng6;
                    } catch (BadParcelableException e2) {
                        Throwable th2 = e2;
                        latLng = latLng8;
                        latLng2 = latLng5;
                        latLng3 = latLng7;
                        latLng4 = latLng6;
                        e = th2;
                        ThrowableExtension.printStackTrace(e);
                        return new VisibleRegion(readInt, latLng4, latLng3, latLng2, latLng, latLngBounds);
                    }
                } catch (BadParcelableException e3) {
                    latLng = null;
                    Throwable th3 = e3;
                    latLng2 = latLng5;
                    latLng3 = latLng7;
                    latLng4 = latLng6;
                    e = th3;
                    ThrowableExtension.printStackTrace(e);
                    return new VisibleRegion(readInt, latLng4, latLng3, latLng2, latLng, latLngBounds);
                }
            } catch (BadParcelableException e4) {
                latLng = null;
                latLng2 = null;
                latLng3 = null;
                Throwable th4 = e4;
                latLng4 = latLng6;
                e = th4;
                ThrowableExtension.printStackTrace(e);
                return new VisibleRegion(readInt, latLng4, latLng3, latLng2, latLng, latLngBounds);
            }
        } catch (BadParcelableException e5) {
            e = e5;
            latLng = null;
            latLng2 = null;
            latLng3 = null;
            latLng4 = null;
            ThrowableExtension.printStackTrace(e);
            return new VisibleRegion(readInt, latLng4, latLng3, latLng2, latLng, latLngBounds);
        }
        return new VisibleRegion(readInt, latLng4, latLng3, latLng2, latLng, latLngBounds);
    }

    public VisibleRegion[] newArray(int i) {
        return new VisibleRegion[i];
    }

    static void a(VisibleRegion visibleRegion, Parcel parcel, int i) {
        parcel.writeInt(visibleRegion.a());
        parcel.writeParcelable(visibleRegion.nearLeft, i);
        parcel.writeParcelable(visibleRegion.nearRight, i);
        parcel.writeParcelable(visibleRegion.farLeft, i);
        parcel.writeParcelable(visibleRegion.farRight, i);
        parcel.writeParcelable(visibleRegion.latLngBounds, i);
    }
}
