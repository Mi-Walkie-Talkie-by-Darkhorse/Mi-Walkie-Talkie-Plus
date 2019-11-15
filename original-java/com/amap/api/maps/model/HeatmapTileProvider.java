package com.amap.api.maps.model;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Color;
import android.support.v4.util.LongSparseArray;
import android.util.Log;
import com.amap.api.mapcore.util.dl;
import com.amap.api.maps.AMapException;
import com.autonavi.amap.mapcore.DPoint;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class HeatmapTileProvider implements TileProvider {
    public static final Gradient DEFAULT_GRADIENT = new Gradient(a, b);
    public static final double DEFAULT_OPACITY = 0.6d;
    public static final int DEFAULT_RADIUS = 12;
    private static final int[] a = {Color.rgb(102, 225, 0), Color.rgb(255, 0, 0)};
    private static final float[] b = {0.2f, 1.0f};
    private a c;
    private Collection<WeightedLatLng> d;
    private dl e;
    private int f;
    private Gradient g;
    private int[] h;
    private double[] i;
    private double j;
    private double[] k;

    public static class Builder {
        /* access modifiers changed from: private */
        public Collection<WeightedLatLng> a;
        /* access modifiers changed from: private */
        public int b = 12;
        /* access modifiers changed from: private */
        public Gradient c = HeatmapTileProvider.DEFAULT_GRADIENT;
        /* access modifiers changed from: private */
        public double d = 0.6d;

        public Builder data(Collection<LatLng> collection) {
            return weightedData(HeatmapTileProvider.d(collection));
        }

        public Builder weightedData(Collection<WeightedLatLng> collection) {
            this.a = collection;
            return this;
        }

        public Builder radius(int i) {
            this.b = Math.max(10, Math.min(i, 50));
            return this;
        }

        public Builder gradient(Gradient gradient) {
            this.c = gradient;
            return this;
        }

        public Builder transparency(double d2) {
            this.d = Math.max(0.0d, Math.min(d2, 1.0d));
            return this;
        }

        public HeatmapTileProvider build() {
            if (this.a == null || this.a.size() == 0) {
                try {
                    throw new AMapException("No input points.");
                } catch (AMapException e) {
                    Log.e("amap", e.getErrorMessage());
                    ThrowableExtension.printStackTrace(e);
                    return null;
                }
            } else {
                try {
                    return new HeatmapTileProvider(this);
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                    return null;
                }
            }
        }
    }

    private HeatmapTileProvider(Builder builder) {
        this.d = builder.a;
        this.f = builder.b;
        this.g = builder.c;
        if (this.g == null || !this.g.isAvailable()) {
            this.g = DEFAULT_GRADIENT;
        }
        this.j = builder.d;
        this.i = a(this.f, ((double) this.f) / 3.0d);
        a(this.g);
        c(this.d);
    }

    private void c(Collection<WeightedLatLng> collection) {
        try {
            ArrayList arrayList = new ArrayList();
            for (WeightedLatLng weightedLatLng : collection) {
                if (weightedLatLng.latLng.latitude < 85.0d && weightedLatLng.latLng.latitude > -85.0d) {
                    arrayList.add(weightedLatLng);
                }
            }
            this.d = arrayList;
            this.e = a(this.d);
            this.c = new a(this.e);
            for (WeightedLatLng a2 : this.d) {
                this.c.a(a2);
            }
            this.k = a(this.f);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* access modifiers changed from: private */
    public static Collection<WeightedLatLng> d(Collection<LatLng> collection) {
        ArrayList arrayList = new ArrayList();
        for (LatLng weightedLatLng : collection) {
            arrayList.add(new WeightedLatLng(weightedLatLng));
        }
        return arrayList;
    }

    public Tile getTile(int i2, int i3, int i4) {
        Collection<WeightedLatLng> collection;
        double d2;
        double pow = 1.0d / Math.pow(2.0d, (double) i4);
        double d3 = (((double) this.f) * pow) / 256.0d;
        double d4 = ((2.0d * d3) + pow) / ((double) ((this.f * 2) + 256));
        double d5 = (((double) i2) * pow) - d3;
        double d6 = (((double) (i2 + 1)) * pow) + d3;
        double d7 = (((double) i3) * pow) - d3;
        double d8 = (pow * ((double) (i3 + 1))) + d3;
        Collection arrayList = new ArrayList();
        if (d5 < 0.0d) {
            collection = this.c.a(new dl(1.0d + d5, 1.0d, d7, d8));
            d2 = -1.0d;
        } else if (d6 > 1.0d) {
            collection = this.c.a(new dl(0.0d, d6 - 1.0d, d7, d8));
            d2 = 1.0d;
        } else {
            collection = arrayList;
            d2 = 0.0d;
        }
        dl dlVar = new dl(d5, d6, d7, d8);
        if (!dlVar.a(new dl(this.e.a - d3, this.e.c + d3, this.e.b - d3, d3 + this.e.d))) {
            return TileProvider.NO_TILE;
        }
        Collection<WeightedLatLng> a2 = this.c.a(dlVar);
        if (a2.isEmpty()) {
            return TileProvider.NO_TILE;
        }
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, new int[]{(this.f * 2) + 256, (this.f * 2) + 256});
        for (WeightedLatLng weightedLatLng : a2) {
            DPoint point = weightedLatLng.getPoint();
            int i5 = (int) ((point.x - d5) / d4);
            int i6 = (int) ((point.y - d7) / d4);
            double[] dArr2 = dArr[i5];
            dArr2[i6] = dArr2[i6] + weightedLatLng.intensity;
        }
        for (WeightedLatLng weightedLatLng2 : collection) {
            DPoint point2 = weightedLatLng2.getPoint();
            int i7 = (int) (((point2.x + d2) - d5) / d4);
            int i8 = (int) ((point2.y - d7) / d4);
            double[] dArr3 = dArr[i7];
            dArr3[i8] = dArr3[i8] + weightedLatLng2.intensity;
        }
        return a(a(a(dArr, this.i), this.h, this.k[i4]));
    }

    private void a(Gradient gradient) {
        this.g = gradient;
        this.h = gradient.generateColorMap(this.j);
    }

    private double[] a(int i2) {
        double[] dArr = new double[21];
        for (int i3 = 5; i3 < 11; i3++) {
            dArr[i3] = a(this.d, this.e, i2, (int) (1280.0d * Math.pow(2.0d, (double) i3)));
            if (i3 == 5) {
                for (int i4 = 0; i4 < i3; i4++) {
                    dArr[i4] = dArr[i3];
                }
            }
        }
        for (int i5 = 11; i5 < 21; i5++) {
            dArr[i5] = dArr[10];
        }
        return dArr;
    }

    private static Tile a(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(CompressFormat.PNG, 100, byteArrayOutputStream);
        return Tile.obtain(256, 256, byteArrayOutputStream.toByteArray());
    }

    static dl a(Collection<WeightedLatLng> collection) {
        Iterator it = collection.iterator();
        WeightedLatLng weightedLatLng = (WeightedLatLng) it.next();
        double d2 = weightedLatLng.getPoint().x;
        double d3 = weightedLatLng.getPoint().x;
        double d4 = weightedLatLng.getPoint().y;
        double d5 = weightedLatLng.getPoint().y;
        while (it.hasNext()) {
            WeightedLatLng weightedLatLng2 = (WeightedLatLng) it.next();
            double d6 = weightedLatLng2.getPoint().x;
            double d7 = weightedLatLng2.getPoint().y;
            if (d6 < d2) {
                d2 = d6;
            }
            if (d6 > d3) {
                d3 = d6;
            }
            if (d7 < d4) {
                d4 = d7;
            }
            if (d7 > d5) {
                d5 = d7;
            }
        }
        return new dl(d2, d3, d4, d5);
    }

    static double[] a(int i2, double d2) {
        double[] dArr = new double[((i2 * 2) + 1)];
        for (int i3 = -i2; i3 <= i2; i3++) {
            dArr[i3 + i2] = Math.exp(((double) ((-i3) * i3)) / ((2.0d * d2) * d2));
        }
        return dArr;
    }

    static double[][] a(double[][] dArr, double[] dArr2) {
        int floor = (int) Math.floor(((double) dArr2.length) / 2.0d);
        int length = dArr.length;
        int i2 = length - (floor * 2);
        int i3 = (floor + i2) - 1;
        double[][] dArr3 = (double[][]) Array.newInstance(Double.TYPE, new int[]{length, length});
        int i4 = 0;
        while (i4 < length) {
            for (int i5 = 0; i5 < length; i5++) {
                double d2 = dArr[i4][i5];
                if (d2 != 0.0d) {
                    int i6 = (i3 < i4 + floor ? i3 : i4 + floor) + 1;
                    for (int i7 = floor > i4 - floor ? floor : i4 - floor; i7 < i6; i7++) {
                        double[] dArr4 = dArr3[i7];
                        dArr4[i5] = dArr4[i5] + (dArr2[i7 - (i4 - floor)] * d2);
                    }
                }
            }
            i4++;
        }
        double[][] dArr5 = (double[][]) Array.newInstance(Double.TYPE, new int[]{i2, i2});
        for (int i8 = floor; i8 < i3 + 1; i8++) {
            int i9 = 0;
            while (i9 < length) {
                double d3 = dArr3[i8][i9];
                if (d3 != 0.0d) {
                    int i10 = (i3 < i9 + floor ? i3 : i9 + floor) + 1;
                    for (int i11 = floor > i9 - floor ? floor : i9 - floor; i11 < i10; i11++) {
                        double[] dArr6 = dArr5[i8 - floor];
                        int i12 = i11 - floor;
                        dArr6[i12] = dArr6[i12] + (dArr2[i11 - (i9 - floor)] * d3);
                    }
                }
                i9++;
            }
        }
        return dArr5;
    }

    static Bitmap a(double[][] dArr, int[] iArr, double d2) {
        int i2 = iArr[iArr.length - 1];
        double length = ((double) (iArr.length - 1)) / d2;
        int length2 = dArr.length;
        int[] iArr2 = new int[(length2 * length2)];
        for (int i3 = 0; i3 < length2; i3++) {
            for (int i4 = 0; i4 < length2; i4++) {
                double d3 = dArr[i4][i3];
                int i5 = (i3 * length2) + i4;
                int i6 = (int) (d3 * length);
                if (d3 == 0.0d) {
                    iArr2[i5] = 0;
                } else if (i6 < iArr.length) {
                    iArr2[i5] = iArr[i6];
                } else {
                    iArr2[i5] = i2;
                }
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(length2, length2, Config.ARGB_8888);
        createBitmap.setPixels(iArr2, 0, length2, 0, 0, length2, length2);
        return createBitmap;
    }

    static double a(Collection<WeightedLatLng> collection, dl dlVar, int i2, int i3) {
        LongSparseArray longSparseArray;
        double d2 = dlVar.a;
        double d3 = dlVar.c;
        double d4 = dlVar.b;
        double d5 = dlVar.d;
        double d6 = ((double) ((int) (((double) (i3 / (i2 * 2))) + 0.5d))) / (d3 - d2 > d5 - d4 ? d3 - d2 : d5 - d4);
        LongSparseArray longSparseArray2 = new LongSparseArray();
        double d7 = 0.0d;
        Iterator it = collection.iterator();
        while (true) {
            double d8 = d7;
            if (!it.hasNext()) {
                return d8;
            }
            WeightedLatLng weightedLatLng = (WeightedLatLng) it.next();
            int i4 = (int) ((weightedLatLng.getPoint().x - d2) * d6);
            int i5 = (int) ((weightedLatLng.getPoint().y - d4) * d6);
            LongSparseArray longSparseArray3 = (LongSparseArray) longSparseArray2.get((long) i4);
            if (longSparseArray3 == null) {
                LongSparseArray longSparseArray4 = new LongSparseArray();
                longSparseArray2.put((long) i4, longSparseArray4);
                longSparseArray = longSparseArray4;
            } else {
                longSparseArray = longSparseArray3;
            }
            Double d9 = (Double) longSparseArray.get((long) i5);
            if (d9 == null) {
                d9 = Double.valueOf(0.0d);
            }
            Double valueOf = Double.valueOf(weightedLatLng.intensity + d9.doubleValue());
            longSparseArray.put((long) i5, valueOf);
            if (valueOf.doubleValue() > d8) {
                d7 = valueOf.doubleValue();
            } else {
                d7 = d8;
            }
        }
    }

    public int getTileHeight() {
        return 256;
    }

    public int getTileWidth() {
        return 256;
    }
}
