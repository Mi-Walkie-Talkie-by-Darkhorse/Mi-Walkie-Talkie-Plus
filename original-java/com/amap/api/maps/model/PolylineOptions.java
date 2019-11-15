package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class PolylineOptions implements Parcelable {
    public static final PolylineOptionsCreator CREATOR = new PolylineOptionsCreator();
    public static final int DOTTEDLINE_TYPE_CIRCLE = 1;
    public static final int DOTTEDLINE_TYPE_SQUARE = 0;
    String a;
    private final List<LatLng> b = new ArrayList();
    private float c = 10.0f;
    private int d = ViewCompat.MEASURED_STATE_MASK;
    private float e = 0.0f;
    private boolean f = true;
    private BitmapDescriptor g;
    private List<BitmapDescriptor> h;
    private List<Integer> i;
    private List<Integer> j;
    private boolean k = true;
    private boolean l = false;
    private boolean m = false;
    private boolean n = false;
    private float o = 1.0f;
    private boolean p = false;
    private int q = 0;

    public PolylineOptions setUseTexture(boolean z) {
        this.k = z;
        return this;
    }

    public PolylineOptions setCustomTexture(BitmapDescriptor bitmapDescriptor) {
        this.g = bitmapDescriptor;
        return this;
    }

    public BitmapDescriptor getCustomTexture() {
        return this.g;
    }

    public PolylineOptions setCustomTextureList(List<BitmapDescriptor> list) {
        this.h = list;
        return this;
    }

    public List<BitmapDescriptor> getCustomTextureList() {
        return this.h;
    }

    public PolylineOptions setCustomTextureIndex(List<Integer> list) {
        this.j = list;
        return this;
    }

    public List<Integer> getCustomTextureIndex() {
        return this.j;
    }

    public PolylineOptions colorValues(List<Integer> list) {
        this.i = list;
        return this;
    }

    public List<Integer> getColorValues() {
        return this.i;
    }

    public PolylineOptions useGradient(boolean z) {
        this.n = z;
        return this;
    }

    public boolean isUseGradient() {
        return this.n;
    }

    public boolean isUseTexture() {
        return this.k;
    }

    public boolean isGeodesic() {
        return this.l;
    }

    public PolylineOptions add(LatLng latLng) {
        if (latLng != null) {
            try {
                this.b.add(latLng);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
        return this;
    }

    public PolylineOptions add(LatLng... latLngArr) {
        if (latLngArr != null) {
            try {
                this.b.addAll(Arrays.asList(latLngArr));
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
        return this;
    }

    public PolylineOptions addAll(Iterable<LatLng> iterable) {
        if (iterable != null) {
            try {
                for (LatLng add : iterable) {
                    this.b.add(add);
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
        return this;
    }

    public PolylineOptions width(float f2) {
        this.c = f2;
        return this;
    }

    public PolylineOptions color(int i2) {
        this.d = i2;
        return this;
    }

    public PolylineOptions zIndex(float f2) {
        this.e = f2;
        return this;
    }

    public PolylineOptions visible(boolean z) {
        this.f = z;
        return this;
    }

    public PolylineOptions geodesic(boolean z) {
        this.l = z;
        return this;
    }

    public PolylineOptions setDottedLine(boolean z) {
        this.m = z;
        return this;
    }

    public boolean isDottedLine() {
        return this.m;
    }

    public PolylineOptions setDottedLineType(int i2) {
        this.q = i2 == 0 ? 0 : 1;
        return this;
    }

    public int getDottedLineType() {
        return this.q;
    }

    public List<LatLng> getPoints() {
        return this.b;
    }

    public float getWidth() {
        return this.c;
    }

    public int getColor() {
        return this.d;
    }

    public float getZIndex() {
        return this.e;
    }

    public boolean isVisible() {
        return this.f;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedList(this.b);
        parcel.writeFloat(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.q);
        parcel.writeFloat(this.e);
        parcel.writeFloat(this.o);
        parcel.writeString(this.a);
        parcel.writeBooleanArray(new boolean[]{this.f, this.m, this.l, this.n, this.p});
        if (this.g != null) {
            parcel.writeParcelable(this.g, i2);
        }
        if (this.h != null) {
            parcel.writeList(this.h);
        }
        if (this.j != null) {
            parcel.writeList(this.j);
        }
        if (this.i != null) {
            parcel.writeList(this.i);
        }
    }

    public PolylineOptions transparency(float f2) {
        this.o = f2;
        return this;
    }

    public float getTransparency() {
        return this.o;
    }

    public PolylineOptions aboveMaskLayer(boolean z) {
        this.p = z;
        return this;
    }

    public boolean isAboveMaskLayer() {
        return this.p;
    }

    public void setPoints(List<LatLng> list) {
        if (list != null && this.b != list) {
            try {
                this.b.clear();
                this.b.addAll(list);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }
}
