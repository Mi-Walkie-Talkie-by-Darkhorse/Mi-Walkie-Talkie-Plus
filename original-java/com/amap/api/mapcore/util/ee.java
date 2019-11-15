package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.os.Build.VERSION;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.TextView;
import com.amap.api.mapcore.util.fx.a;
import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.model.BaseHoleOptions;
import com.amap.api.maps.model.CircleHoleOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.PolygonHoleOptions;
import com.amap.api.maps.utils.SpatialRelationUtil;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.CameraUpdateMessage;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.FPoint3;
import com.autonavi.amap.mapcore.FileUtil;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapConfig;
import com.autonavi.amap.mapcore.VirtualEarthProjection;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.data.Const;
import com.xiaomi.mipush.sdk.Constants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: Util */
public class ee {
    private static FPoint[] a = {FPoint.obtain(), FPoint.obtain(), FPoint.obtain(), FPoint.obtain()};
    private static List<Float> b = new ArrayList(4);
    private static List<Float> c = new ArrayList(4);

    public static Bitmap a(Context context, String str) {
        try {
            InputStream open = dz.a(context).open(str);
            Bitmap decodeStream = BitmapFactory.decodeStream(open);
            open.close();
            return decodeStream;
        } catch (Throwable th) {
            gf.b(th, "Util", "fromAsset");
            return null;
        }
    }

    public static void a(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public static String a(String str, Object obj) {
        return str + "=" + String.valueOf(obj);
    }

    public static float a(float f, float f2) {
        if (f <= 40.0f) {
            return f;
        }
        if (f2 <= 15.0f) {
            return 40.0f;
        }
        if (f2 <= 16.0f) {
            return 50.0f;
        }
        if (f2 <= 17.0f) {
            return 54.0f;
        }
        if (f2 <= 18.0f) {
            return 57.0f;
        }
        return 60.0f;
    }

    public static float a(MapConfig mapConfig, float f) {
        if (mapConfig != null) {
            if (f > mapConfig.maxZoomLevel) {
                return mapConfig.maxZoomLevel;
            }
            if (f < mapConfig.minZoomLevel) {
                return mapConfig.minZoomLevel;
            }
            return f;
        } else if (f > 19.0f) {
            return 19.0f;
        } else {
            if (f < 3.0f) {
                return 3.0f;
            }
            return f;
        }
    }

    public static FloatBuffer a(float[] fArr) {
        try {
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(fArr.length * 4);
            allocateDirect.order(ByteOrder.nativeOrder());
            FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
            asFloatBuffer.put(fArr);
            asFloatBuffer.position(0);
            return asFloatBuffer;
        } catch (Throwable th) {
            gf.b(th, "Util", "makeFloatBuffer1");
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public static FloatBuffer a(float[] fArr, FloatBuffer floatBuffer) {
        try {
            floatBuffer.clear();
            floatBuffer.put(fArr);
            floatBuffer.position(0);
            return floatBuffer;
        } catch (Throwable th) {
            gf.b(th, "Util", "makeFloatBuffer2");
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public static int a(int i, int i2) {
        return a(0, Bitmap.createBitmap(i, i2, Config.ARGB_8888), true);
    }

    public static int a(Bitmap bitmap) {
        return a(bitmap, false);
    }

    public static int a(Bitmap bitmap, boolean z) {
        return a(0, bitmap, z);
    }

    public static int a(int i, Bitmap bitmap, boolean z) {
        int b2 = b(i, bitmap, z);
        if (bitmap != null) {
            bitmap.recycle();
        }
        return b2;
    }

    public static int b(int i, Bitmap bitmap, boolean z) {
        if (bitmap == null || bitmap.isRecycled()) {
            return 0;
        }
        if (i == 0) {
            int[] iArr = {0};
            GLES20.glGenTextures(1, iArr, 0);
            i = iArr[0];
        }
        GLES20.glBindTexture(3553, i);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        if (z) {
            GLES20.glTexParameterf(3553, 10242, 10497.0f);
            GLES20.glTexParameterf(3553, 10243, 10497.0f);
        } else {
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
        }
        GLUtils.texImage2D(3553, 0, bitmap, 0);
        return i;
    }

    public static int a(int i, Bitmap bitmap, int i2, int i3) {
        if (bitmap == null || bitmap.isRecycled()) {
            return 0;
        }
        if (i == 0) {
            int[] iArr = {0};
            GLES20.glGenTextures(1, iArr, 0);
            i = iArr[0];
        }
        GLES20.glBindTexture(3553, i);
        GLUtils.texSubImage2D(3553, 0, i2, i3, bitmap);
        return i;
    }

    public static String a(String... strArr) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (String append : strArr) {
            sb.append(append);
            if (i != strArr.length - 1) {
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            }
            i++;
        }
        return sb.toString();
    }

    public static int a(Object[] objArr) {
        return Arrays.hashCode(objArr);
    }

    public static Bitmap a(Bitmap bitmap, float f) {
        if (bitmap == null) {
            return null;
        }
        return Bitmap.createScaledBitmap(bitmap, (int) (((float) bitmap.getWidth()) * f), (int) (((float) bitmap.getHeight()) * f), true);
    }

    public static String a(Context context) {
        File file = new File(FileUtil.getMapBaseStorage(context), Const.PARAM_DATA);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(file.toString() + File.separator);
        if (!file2.exists()) {
            file2.mkdir();
        }
        return file.toString() + File.separator;
    }

    public static String b(Context context) {
        String a2 = a(context);
        if (a2 == null) {
            return null;
        }
        File file = new File(a2, "VMAP2");
        if (!file.exists()) {
            file.mkdir();
        }
        return file.toString() + File.separator;
    }

    public static String a(int i) {
        if (i < 1000) {
            return i + "m";
        }
        return (i / 1000) + "km";
    }

    public static boolean c(Context context) {
        if (context == null) {
            return false;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        State state = activeNetworkInfo.getState();
        if (state == null || state == State.DISCONNECTED || state == State.DISCONNECTING) {
            return false;
        }
        return true;
    }

    public static boolean a() {
        return VERSION.SDK_INT >= 8;
    }

    public static boolean b() {
        return VERSION.SDK_INT >= 9;
    }

    public static boolean c() {
        return VERSION.SDK_INT >= 11;
    }

    public static boolean d() {
        return VERSION.SDK_INT >= 12;
    }

    public static void b(int i) {
        GLES20.glDeleteTextures(1, new int[]{i}, 0);
    }

    public static String a(InputStream inputStream) {
        try {
            return new String(b(inputStream), "utf-8");
        } catch (Throwable th) {
            gf.b(th, "Util", "decodeAssetResData");
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public static byte[] b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[2048];
        while (true) {
            int read = inputStream.read(bArr, 0, 2048);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r3v0, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r2v1, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r3v1 */
    /* JADX WARNING: type inference failed for: r3v2, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r3v3 */
    /* JADX WARNING: type inference failed for: r2v3, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r1v7, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r3v5 */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r1v9 */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r2v10 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r2v12 */
    /* JADX WARNING: type inference failed for: r3v7 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: type inference failed for: r3v8 */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: type inference failed for: r3v10 */
    /* JADX WARNING: type inference failed for: r1v12 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x002f A[SYNTHETIC, Splitter:B:15:0x002f] */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0034 A[SYNTHETIC, Splitter:B:18:0x0034] */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0095 A[SYNTHETIC, Splitter:B:68:0x0095] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x009a A[SYNTHETIC, Splitter:B:71:0x009a] */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x00c2 A[SYNTHETIC, Splitter:B:93:0x00c2] */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x00c7 A[SYNTHETIC, Splitter:B:96:0x00c7] */
    /* JADX WARNING: Unknown variable types count: 7 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(java.io.File r6) {
        /*
            r2 = 0
            java.lang.StringBuffer r4 = new java.lang.StringBuffer
            r4.<init>()
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ FileNotFoundException -> 0x00f9, IOException -> 0x0087, all -> 0x00be }
            r3.<init>(r6)     // Catch:{ FileNotFoundException -> 0x00f9, IOException -> 0x0087, all -> 0x00be }
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch:{ FileNotFoundException -> 0x00fd, IOException -> 0x00f4 }
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch:{ FileNotFoundException -> 0x00fd, IOException -> 0x00f4 }
            java.lang.String r5 = "utf-8"
            r0.<init>(r3, r5)     // Catch:{ FileNotFoundException -> 0x00fd, IOException -> 0x00f4 }
            r1.<init>(r0)     // Catch:{ FileNotFoundException -> 0x00fd, IOException -> 0x00f4 }
        L_0x0017:
            java.lang.String r0 = r1.readLine()     // Catch:{ FileNotFoundException -> 0x0021, IOException -> 0x00f6, all -> 0x00ed }
            if (r0 == 0) goto L_0x003c
            r4.append(r0)     // Catch:{ FileNotFoundException -> 0x0021, IOException -> 0x00f6, all -> 0x00ed }
            goto L_0x0017
        L_0x0021:
            r0 = move-exception
            r2 = r3
        L_0x0023:
            java.lang.String r3 = "Util"
            java.lang.String r5 = "readFile fileNotFound"
            com.amap.api.mapcore.util.gf.b(r0, r3, r5)     // Catch:{ all -> 0x00f0 }
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x00f0 }
            if (r2 == 0) goto L_0x0032
            r2.close()     // Catch:{ IOException -> 0x006c }
        L_0x0032:
            if (r1 == 0) goto L_0x0037
            r1.close()     // Catch:{ IOException -> 0x0067 }
        L_0x0037:
            java.lang.String r0 = r4.toString()
            return r0
        L_0x003c:
            if (r3 == 0) goto L_0x0041
            r3.close()     // Catch:{ IOException -> 0x004c }
        L_0x0041:
            if (r1 == 0) goto L_0x0037
            r1.close()     // Catch:{ IOException -> 0x0047 }
            goto L_0x0037
        L_0x0047:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0037
        L_0x004c:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x005b }
            if (r1 == 0) goto L_0x0037
            r1.close()     // Catch:{ IOException -> 0x0056 }
            goto L_0x0037
        L_0x0056:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0037
        L_0x005b:
            r0 = move-exception
            if (r1 == 0) goto L_0x0061
            r1.close()     // Catch:{ IOException -> 0x0062 }
        L_0x0061:
            throw r0
        L_0x0062:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0061
        L_0x0067:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0037
        L_0x006c:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x007b }
            if (r1 == 0) goto L_0x0037
            r1.close()     // Catch:{ IOException -> 0x0076 }
            goto L_0x0037
        L_0x0076:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0037
        L_0x007b:
            r0 = move-exception
            if (r1 == 0) goto L_0x0081
            r1.close()     // Catch:{ IOException -> 0x0082 }
        L_0x0081:
            throw r0
        L_0x0082:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0081
        L_0x0087:
            r0 = move-exception
            r3 = r2
        L_0x0089:
            java.lang.String r1 = "Util"
            java.lang.String r5 = "readFile io"
            com.amap.api.mapcore.util.gf.b(r0, r1, r5)     // Catch:{ all -> 0x00eb }
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x00eb }
            if (r3 == 0) goto L_0x0098
            r3.close()     // Catch:{ IOException -> 0x00a3 }
        L_0x0098:
            if (r2 == 0) goto L_0x0037
            r2.close()     // Catch:{ IOException -> 0x009e }
            goto L_0x0037
        L_0x009e:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0037
        L_0x00a3:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x00b2 }
            if (r2 == 0) goto L_0x0037
            r2.close()     // Catch:{ IOException -> 0x00ad }
            goto L_0x0037
        L_0x00ad:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0037
        L_0x00b2:
            r0 = move-exception
            if (r2 == 0) goto L_0x00b8
            r2.close()     // Catch:{ IOException -> 0x00b9 }
        L_0x00b8:
            throw r0
        L_0x00b9:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00b8
        L_0x00be:
            r0 = move-exception
            r3 = r2
        L_0x00c0:
            if (r3 == 0) goto L_0x00c5
            r3.close()     // Catch:{ IOException -> 0x00d0 }
        L_0x00c5:
            if (r2 == 0) goto L_0x00ca
            r2.close()     // Catch:{ IOException -> 0x00cb }
        L_0x00ca:
            throw r0
        L_0x00cb:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00ca
        L_0x00d0:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x00df }
            if (r2 == 0) goto L_0x00ca
            r2.close()     // Catch:{ IOException -> 0x00da }
            goto L_0x00ca
        L_0x00da:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00ca
        L_0x00df:
            r0 = move-exception
            if (r2 == 0) goto L_0x00e5
            r2.close()     // Catch:{ IOException -> 0x00e6 }
        L_0x00e5:
            throw r0
        L_0x00e6:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00e5
        L_0x00eb:
            r0 = move-exception
            goto L_0x00c0
        L_0x00ed:
            r0 = move-exception
            r2 = r1
            goto L_0x00c0
        L_0x00f0:
            r0 = move-exception
            r3 = r2
            r2 = r1
            goto L_0x00c0
        L_0x00f4:
            r0 = move-exception
            goto L_0x0089
        L_0x00f6:
            r0 = move-exception
            r2 = r1
            goto L_0x0089
        L_0x00f9:
            r0 = move-exception
            r1 = r2
            goto L_0x0023
        L_0x00fd:
            r0 = move-exception
            r1 = r2
            r2 = r3
            goto L_0x0023
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ee.a(java.io.File):java.lang.String");
    }

    public static boolean a(LatLng latLng, List<LatLng> list) {
        int i = 0;
        double d = latLng.longitude;
        double d2 = latLng.latitude;
        double d3 = latLng.latitude;
        if (list.size() < 3) {
            return false;
        }
        if (!((LatLng) list.get(0)).equals(list.get(list.size() - 1))) {
            list.add(list.get(0));
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            int i4 = i;
            if (i3 >= list.size() - 1) {
                return i4 % 2 != 0;
            }
            double d4 = ((LatLng) list.get(i3)).longitude;
            double d5 = ((LatLng) list.get(i3)).latitude;
            double d6 = ((LatLng) list.get(i3 + 1)).longitude;
            double d7 = ((LatLng) list.get(i3 + 1)).latitude;
            if (b(d, d2, d4, d5, d6, d7)) {
                return true;
            }
            if (Math.abs(d7 - d5) >= 1.0E-9d) {
                if (b(d4, d5, d, d2, 180.0d, d3)) {
                    if (d5 > d7) {
                        i4++;
                    }
                } else if (b(d6, d7, d, d2, 180.0d, d3)) {
                    if (d7 > d5) {
                        i4++;
                    }
                } else if (a(d4, d5, d6, d7, d, d2, 180.0d, d3)) {
                    i4++;
                }
            }
            i = i4;
            i2 = i3 + 1;
        }
    }

    public static double a(double d, double d2, double d3, double d4, double d5, double d6) {
        return ((d3 - d) * (d6 - d2)) - ((d5 - d) * (d4 - d2));
    }

    public static boolean b(double d, double d2, double d3, double d4, double d5, double d6) {
        if (Math.abs(a(d, d2, d3, d4, d5, d6)) >= 1.0E-9d || (d - d3) * (d - d5) > 0.0d || (d2 - d4) * (d2 - d6) > 0.0d) {
            return false;
        }
        return true;
    }

    public static boolean a(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        double d9 = ((d3 - d) * (d8 - d6)) - ((d4 - d2) * (d7 - d5));
        if (d9 == 0.0d) {
            return false;
        }
        double d10 = (((d2 - d6) * (d7 - d5)) - ((d - d5) * (d8 - d6))) / d9;
        double d11 = (((d2 - d6) * (d3 - d)) - ((d - d5) * (d4 - d2))) / d9;
        if (d10 < 0.0d || d10 > 1.0d || d11 < 0.0d || d11 > 1.0d) {
            return false;
        }
        return true;
    }

    public static boolean a(BaseHoleOptions baseHoleOptions, LatLng latLng) {
        if (baseHoleOptions instanceof CircleHoleOptions) {
            CircleHoleOptions circleHoleOptions = (CircleHoleOptions) baseHoleOptions;
            LatLng center = circleHoleOptions.getCenter();
            double radius = circleHoleOptions.getRadius();
            if (center != null && ((double) AMapUtils.calculateLineDistance(center, latLng)) <= radius) {
                return true;
            }
            return false;
        }
        List points = ((PolygonHoleOptions) baseHoleOptions).getPoints();
        if (points == null || points.size() == 0) {
            return false;
        }
        return a(latLng, points);
    }

    public static List<FPoint> a(FPoint[] fPointArr, List<FPoint> list, boolean z) {
        int i;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(list);
        for (int i2 = 0; i2 < 4; i2 = (byte) (i2 + 1)) {
            arrayList.clear();
            int size = arrayList2.size();
            int i3 = 0;
            while (true) {
                if (z) {
                    i = size;
                } else {
                    i = size - 1;
                }
                if (i3 >= i) {
                    break;
                }
                FPoint fPoint = (FPoint) arrayList2.get(i3 % size);
                FPoint fPoint2 = (FPoint) arrayList2.get((i3 + 1) % size);
                if (i3 == 0 && a(fPoint, fPointArr[i2], fPointArr[(i2 + 1) % fPointArr.length])) {
                    arrayList.add(fPoint);
                }
                if (a(fPoint, fPointArr[i2], fPointArr[(i2 + 1) % fPointArr.length])) {
                    if (a(fPoint2, fPointArr[i2], fPointArr[(i2 + 1) % fPointArr.length])) {
                        arrayList.add(fPoint2);
                    } else {
                        arrayList.add(a(fPointArr[i2], fPointArr[(i2 + 1) % fPointArr.length], fPoint, fPoint2));
                    }
                } else if (a(fPoint2, fPointArr[i2], fPointArr[(i2 + 1) % fPointArr.length])) {
                    arrayList.add(a(fPointArr[i2], fPointArr[(i2 + 1) % fPointArr.length], fPoint, fPoint2));
                    arrayList.add(fPoint2);
                }
                i3++;
            }
            arrayList2.clear();
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                arrayList2.add(arrayList.get(i4));
            }
        }
        return arrayList2;
    }

    public static List<FPoint> b(FPoint[] fPointArr, List<FPoint> list, boolean z) {
        int i;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(list);
        for (int i2 = 0; i2 < 4; i2 = (byte) (i2 + 1)) {
            arrayList.clear();
            int size = arrayList2.size();
            int i3 = 0;
            while (true) {
                if (z) {
                    i = size;
                } else {
                    i = size - 1;
                }
                if (i3 >= i) {
                    break;
                }
                FPoint3 fPoint3 = (FPoint3) arrayList2.get(i3 % size);
                FPoint3 fPoint32 = (FPoint3) arrayList2.get((i3 + 1) % size);
                if (i3 == 0 && a((FPoint) fPoint3, fPointArr[i2], fPointArr[(i2 + 1) % fPointArr.length])) {
                    arrayList.add(fPoint3);
                }
                if (a((FPoint) fPoint3, fPointArr[i2], fPointArr[(i2 + 1) % fPointArr.length])) {
                    if (a((FPoint) fPoint32, fPointArr[i2], fPointArr[(i2 + 1) % fPointArr.length])) {
                        arrayList.add(fPoint32);
                    } else {
                        arrayList.add(a(fPointArr[i2], fPointArr[(i2 + 1) % fPointArr.length], fPoint3, fPoint32, fPoint32.colorIndex));
                    }
                } else if (a((FPoint) fPoint32, fPointArr[i2], fPointArr[(i2 + 1) % fPointArr.length])) {
                    arrayList.add(a(fPointArr[i2], fPointArr[(i2 + 1) % fPointArr.length], fPoint3, fPoint32, fPoint3.colorIndex));
                    arrayList.add(fPoint32);
                }
                i3++;
            }
            arrayList2.clear();
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                arrayList2.add(arrayList.get(i4));
            }
        }
        return arrayList2;
    }

    private static float a(float f) {
        if (f == 50.0f) {
            return 0.082f;
        }
        if (f == 54.0f) {
            return 0.15f;
        }
        if (f == 57.0f) {
            return 0.2f;
        }
        if (f == 60.0f) {
            return 0.25f;
        }
        return 0.0f;
    }

    public static FPoint[] a(l lVar, boolean z) {
        int i;
        int i2;
        float a2 = (float) (((double) a(lVar.getCameraAngle())) * ((double) lVar.getMapHeight()));
        if (z) {
            i2 = 100;
            i = 10;
        } else {
            i = 0;
            i2 = 0;
        }
        FPoint obtain = FPoint.obtain();
        lVar.b(-i2, (int) (a2 - ((float) i)), (PointF) obtain);
        a[0].set(obtain.x, obtain.y);
        FPoint obtain2 = FPoint.obtain();
        lVar.b(lVar.getMapWidth() + i2, (int) (a2 - ((float) i)), (PointF) obtain2);
        a[1].set(obtain2.x, obtain2.y);
        FPoint obtain3 = FPoint.obtain();
        lVar.b(lVar.getMapWidth() + i2, lVar.getMapHeight() + i2, (PointF) obtain3);
        a[2].set(obtain3.x, obtain3.y);
        FPoint obtain4 = FPoint.obtain();
        lVar.b(-i2, i2 + lVar.getMapHeight(), (PointF) obtain4);
        a[3].set(obtain4.x, obtain4.y);
        obtain.recycle();
        obtain2.recycle();
        obtain3.recycle();
        obtain4.recycle();
        return a;
    }

    private static FPoint3 a(FPoint fPoint, FPoint fPoint2, FPoint3 fPoint3, FPoint3 fPoint32, int i) {
        FPoint3 fPoint33 = new FPoint3(0.0f, 0.0f, i);
        double d = (double) (((fPoint2.y - fPoint.y) * (fPoint.x - fPoint3.x)) - ((fPoint2.x - fPoint.x) * (fPoint.y - fPoint3.y)));
        double d2 = (double) (((fPoint2.y - fPoint.y) * (fPoint32.x - fPoint3.x)) - ((fPoint2.x - fPoint.x) * (fPoint32.y - fPoint3.y)));
        fPoint33.x = (float) (((double) fPoint3.x) + ((((double) (fPoint32.x - fPoint3.x)) * d) / d2));
        fPoint33.y = (float) (((d * ((double) (fPoint32.y - fPoint3.y))) / d2) + ((double) fPoint3.y));
        return fPoint33;
    }

    private static FPoint a(FPoint fPoint, FPoint fPoint2, FPoint fPoint3, FPoint fPoint4) {
        FPoint obtain = FPoint.obtain(0.0f, 0.0f);
        double d = (double) (((fPoint2.y - fPoint.y) * (fPoint.x - fPoint3.x)) - ((fPoint2.x - fPoint.x) * (fPoint.y - fPoint3.y)));
        double d2 = (double) (((fPoint2.y - fPoint.y) * (fPoint4.x - fPoint3.x)) - ((fPoint2.x - fPoint.x) * (fPoint4.y - fPoint3.y)));
        obtain.x = (float) (((double) fPoint3.x) + ((((double) (fPoint4.x - fPoint3.x)) * d) / d2));
        obtain.y = (float) (((d * ((double) (fPoint4.y - fPoint3.y))) / d2) + ((double) fPoint3.y));
        return obtain;
    }

    public static boolean a(FPoint fPoint, FPoint[] fPointArr) {
        if (fPointArr == null) {
            return false;
        }
        for (byte b2 = 0; b2 < fPointArr.length; b2 = (byte) (b2 + 1)) {
            if (!a(fPoint, fPointArr[b2], fPointArr[(b2 + 1) % fPointArr.length])) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(FPoint fPoint, FPoint fPoint2, FPoint fPoint3) {
        if (((double) (((fPoint3.x - fPoint2.x) * (fPoint.y - fPoint2.y)) - ((fPoint.x - fPoint2.x) * (fPoint3.y - fPoint2.y)))) >= 0.0d) {
            return true;
        }
        return false;
    }

    public static List<IPoint> a(IPoint[] iPointArr, List<IPoint> list, boolean z) {
        int i;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(list);
        for (int i2 = 0; i2 < 4; i2 = (byte) (i2 + 1)) {
            arrayList.clear();
            int size = arrayList2.size();
            int i3 = 0;
            while (true) {
                if (z) {
                    i = size;
                } else {
                    i = size - 1;
                }
                if (i3 >= i) {
                    break;
                }
                IPoint iPoint = (IPoint) arrayList2.get(i3 % size);
                IPoint iPoint2 = (IPoint) arrayList2.get((i3 + 1) % size);
                if (i3 == 0 && a(iPoint, iPointArr[i2], iPointArr[(i2 + 1) % iPointArr.length])) {
                    arrayList.add(iPoint);
                }
                if (a(iPoint, iPointArr[i2], iPointArr[(i2 + 1) % iPointArr.length])) {
                    if (a(iPoint2, iPointArr[i2], iPointArr[(i2 + 1) % iPointArr.length])) {
                        arrayList.add(iPoint2);
                    } else {
                        arrayList.add(a(iPointArr[i2], iPointArr[(i2 + 1) % iPointArr.length], iPoint, iPoint2));
                    }
                } else if (a(iPoint2, iPointArr[i2], iPointArr[(i2 + 1) % iPointArr.length])) {
                    arrayList.add(a(iPointArr[i2], iPointArr[(i2 + 1) % iPointArr.length], iPoint, iPoint2));
                    arrayList.add(iPoint2);
                }
                i3++;
            }
            arrayList2.clear();
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                arrayList2.add(arrayList.get(i4));
            }
        }
        return arrayList2;
    }

    private static IPoint a(IPoint iPoint, IPoint iPoint2, IPoint iPoint3, IPoint iPoint4) {
        IPoint obtain = IPoint.obtain(0, 0);
        double d = (((double) (iPoint2.y - iPoint.y)) * ((double) (iPoint.x - iPoint3.x))) - (((double) (iPoint2.x - iPoint.x)) * ((double) (iPoint.y - iPoint3.y)));
        double d2 = (((double) (iPoint2.y - iPoint.y)) * ((double) (iPoint4.x - iPoint3.x))) - (((double) (iPoint2.x - iPoint.x)) * ((double) (iPoint4.y - iPoint3.y)));
        obtain.x = (int) (((double) iPoint3.x) + ((((double) (iPoint4.x - iPoint3.x)) * d) / d2));
        obtain.y = (int) (((d * ((double) (iPoint4.y - iPoint3.y))) / d2) + ((double) iPoint3.y));
        return obtain;
    }

    public static boolean a(List<IPoint> list, int i, int i2) {
        if (i2 < 3) {
            return false;
        }
        double d = 0.0d;
        int i3 = i2 - 1;
        for (int i4 = 0; i4 < i2; i4++) {
            IPoint iPoint = (IPoint) list.get(i3);
            IPoint iPoint2 = (IPoint) list.get(i4);
            d += ((((double) iPoint.x) / 1000000.0d) * (((double) iPoint2.y) / 1000000.0d)) - ((((double) iPoint.y) / 1000000.0d) * (((double) iPoint2.x) / 1000000.0d));
            i3 = i4;
        }
        return d < 0.0d;
    }

    private static boolean a(IPoint iPoint, IPoint iPoint2, IPoint iPoint3) {
        return a(iPoint.x, iPoint.y, iPoint2, iPoint3);
    }

    private static boolean a(int i, int i2, IPoint iPoint, IPoint iPoint2) {
        if ((((double) (iPoint2.x - iPoint.x)) * ((double) (i2 - iPoint.y))) - (((double) (i - iPoint.x)) * ((double) (iPoint2.y - iPoint.y))) >= 0.0d) {
            return true;
        }
        return false;
    }

    public static Bitmap a(int i, int i2, int i3, int i4) {
        try {
            int[] iArr = new int[(i3 * i4)];
            int[] iArr2 = new int[(i3 * i4)];
            IntBuffer wrap = IntBuffer.wrap(iArr);
            wrap.position(0);
            GLES20.glReadPixels(i, i2, i3, i4, 6408, 5121, wrap);
            for (int i5 = 0; i5 < i4; i5++) {
                for (int i6 = 0; i6 < i3; i6++) {
                    int i7 = iArr[(i5 * i3) + i6];
                    iArr2[(((i4 - i5) - 1) * i3) + i6] = (i7 & -16711936) | ((i7 << 16) & 16711680) | ((i7 >> 16) & 255);
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(i3, i4, Config.ARGB_8888);
            createBitmap.setPixels(iArr2, 0, i3, 0, 0, i3, i4);
            return createBitmap;
        } catch (Throwable th) {
            gf.b(th, "AMapDelegateImpGLSurfaceView", "SavePixels");
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public static fx e() {
        try {
            if (g.e != null) {
                return g.e;
            }
            return new a("3dmap", "5.7.0", g.c).a(new String[]{"com.amap.api.maps", "com.amap.api.mapcore", "com.autonavi.amap.mapcore", "com.amap.api.3dmap.admic", "com.amap.api.trace", "com.amap.api.trace.core"}).a("5.7.0").a();
        } catch (Throwable th) {
            return null;
        }
    }

    private static void b(View view) {
        int i = 0;
        if (view instanceof ViewGroup) {
            while (true) {
                int i2 = i;
                if (i2 < ((ViewGroup) view).getChildCount()) {
                    b(((ViewGroup) view).getChildAt(i2));
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        } else if (view instanceof TextView) {
            ((TextView) view).setHorizontallyScrolling(false);
        }
    }

    public static Bitmap a(View view) {
        try {
            b(view);
            view.destroyDrawingCache();
            view.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            Bitmap drawingCache = view.getDrawingCache();
            if (drawingCache != null) {
                return drawingCache.copy(Config.ARGB_8888, false);
            }
            return null;
        } catch (Throwable th) {
            gf.b(th, "Utils", "getBitmapFromView");
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public static DPoint a(LatLng latLng) {
        double d = (latLng.longitude / 360.0d) + 0.5d;
        double sin = Math.sin(Math.toRadians(latLng.latitude));
        return DPoint.obtain(d * 1.0d, (((Math.log((1.0d + sin) / (1.0d - sin)) * 0.5d) / -6.283185307179586d) + 0.5d) * 1.0d);
    }

    public static boolean a(Rect rect, int i, int i2) {
        return rect.contains(i, i2);
    }

    public static Pair<Float, IPoint> a(CameraUpdateMessage cameraUpdateMessage, GLMapState gLMapState, MapConfig mapConfig) {
        LatLngBounds latLngBounds = cameraUpdateMessage.bounds;
        int i = cameraUpdateMessage.width;
        int i2 = cameraUpdateMessage.height;
        return a(mapConfig, Math.max(cameraUpdateMessage.paddingLeft, 1), Math.max(cameraUpdateMessage.paddingRight, 1), Math.max(cameraUpdateMessage.paddingTop, 1), Math.max(cameraUpdateMessage.paddingBottom, 1), latLngBounds, i, i2);
    }

    public static Pair<Float, IPoint> a(MapConfig mapConfig, int i, int i2, int i3, int i4, LatLngBounds latLngBounds, int i5, int i6) {
        int i7;
        int i8;
        int i9;
        Point LatLongToPixels = VirtualEarthProjection.LatLongToPixels(latLngBounds.northeast.latitude, latLngBounds.northeast.longitude, 20);
        Point LatLongToPixels2 = VirtualEarthProjection.LatLongToPixels(latLngBounds.southwest.latitude, latLngBounds.southwest.longitude, 20);
        int i10 = LatLongToPixels.x - LatLongToPixels2.x;
        int i11 = LatLongToPixels2.y - LatLongToPixels.y;
        int i12 = i5 - (i + i2);
        int i13 = i6 - (i3 + i4);
        if (i10 < 0 && i11 < 0) {
            return null;
        }
        int i14 = i10 <= 0 ? 1 : i10;
        if (i11 <= 0) {
            i7 = 1;
        } else {
            i7 = i11;
        }
        if (i12 <= 0) {
            i12 = 1;
        }
        if (i13 <= 0) {
            i13 = 1;
        }
        Pair a2 = a(mapConfig, LatLongToPixels.x, LatLongToPixels.y, LatLongToPixels2.x, LatLongToPixels2.y, i12, i13);
        float floatValue = ((Float) a2.first).floatValue();
        boolean booleanValue = ((Boolean) a2.second).booleanValue();
        float a3 = a(mapConfig.getMapZoomScale(), floatValue, (double) i14);
        float a4 = a(mapConfig.getMapZoomScale(), floatValue, (double) i7);
        if (floatValue >= mapConfig.maxZoomLevel) {
            i8 = (int) (((float) LatLongToPixels2.x) + (((((float) (i2 - i)) + a3) * ((float) i14)) / (a3 * 2.0f)));
            i9 = (int) (((float) LatLongToPixels.y) + (((((float) (i4 - i3)) + a4) * ((float) i7)) / (a4 * 2.0f)));
        } else if (booleanValue) {
            i8 = (int) (((float) LatLongToPixels2.x) + ((((float) ((i5 / 2) - i)) / a3) * ((float) i14)));
            i9 = (int) (((float) LatLongToPixels.y) + (((((float) (i4 - i3)) + a4) * ((float) i7)) / (a4 * 2.0f)));
        } else {
            i8 = (int) (((float) LatLongToPixels2.x) + (((((float) (i2 - i)) + a3) * ((float) i14)) / (a3 * 2.0f)));
            i9 = (int) (((float) LatLongToPixels.y) + ((((float) ((i6 / 2) - i3)) / a4) * ((float) i7)));
        }
        return new Pair<>(Float.valueOf(floatValue), IPoint.obtain((int) (((float) i8) + a(mapConfig.getMapZoomScale(), floatValue, (float) (mapConfig.getAnchorX() - (mapConfig.getMapWidth() >> 1)))), (int) (((float) i9) + a(mapConfig.getMapZoomScale(), floatValue, (float) (mapConfig.getAnchorY() - (mapConfig.getMapHeight() >> 1))))));
    }

    public static double a(float f, double d, double d2) {
        return 20.0d - (Math.log(d2 / (((double) f) * d)) / Math.log(2.0d));
    }

    private static float a(float f, float f2, double d) {
        return (float) (d / (Math.pow(2.0d, (double) (20.0f - f2)) * ((double) f)));
    }

    private static float a(float f, float f2, float f3) {
        return (float) (((double) f3) * Math.pow(2.0d, (double) (20.0f - f2)) * ((double) f));
    }

    public static Pair<Float, Boolean> a(MapConfig mapConfig, int i, int i2, int i3, int i4, int i5, int i6) {
        float min;
        boolean z = true;
        mapConfig.getS_z();
        if (i == i3 && i2 == i4) {
            min = mapConfig.getMaxZoomLevel();
        } else {
            float a2 = (float) a(mapConfig.getMapZoomScale(), (double) i5, (double) Math.abs(i3 - i));
            float min2 = Math.min(a2, (float) a(mapConfig.getMapZoomScale(), (double) i6, (double) Math.abs(i4 - i2)));
            if (min2 != a2) {
                z = false;
            }
            min = Math.min(mapConfig.getMaxZoomLevel(), Math.max(mapConfig.getMinZoomLevel(), min2));
        }
        return new Pair<>(Float.valueOf(min), Boolean.valueOf(z));
    }

    public static float b(MapConfig mapConfig, int i, int i2, int i3, int i4, int i5, int i6) {
        float s_z = mapConfig.getS_z();
        if (i == i3 || i2 == i4) {
            return s_z;
        }
        return Math.max((float) a(mapConfig.getMapZoomScale(), (double) i5, (double) Math.abs(i3 - i)), (float) a(mapConfig.getMapZoomScale(), (double) i6, (double) Math.abs(i4 - i2)));
    }

    public static boolean b(int i, int i2) {
        if (i > 0 && i2 > 0) {
            return true;
        }
        Log.w("3dmap", "the map must have a size");
        return false;
    }

    public static synchronized int[] a(int i, int i2, int i3, int i4, MapConfig mapConfig, GLMapState gLMapState, int i5, int i6) {
        int[] iArr;
        synchronized (ee.class) {
            int mapWidth = mapConfig.getMapWidth();
            int mapHeight = mapConfig.getMapHeight();
            int anchorX = mapConfig.getAnchorX();
            int anchorY = mapConfig.getAnchorY();
            float a2 = a(mapConfig.getMapZoomScale(), gLMapState.getMapZoomer(), (float) anchorX);
            float a3 = a(mapConfig.getMapZoomScale(), gLMapState.getMapZoomer(), (float) (mapWidth - anchorX));
            float a4 = a(mapConfig.getMapZoomScale(), gLMapState.getMapZoomer(), (float) anchorY);
            iArr = new int[]{(int) Math.max(((float) i3) + a2, Math.min((float) i5, ((float) i) - a3)), (int) Math.max(a4 + ((float) i2), Math.min((float) i6, ((float) i4) - a(mapConfig.getMapZoomScale(), gLMapState.getMapZoomer(), (float) (mapHeight - anchorY))))};
        }
        return iArr;
    }

    public static void a(Rect rect) {
        if (rect != null) {
            rect.set(Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        }
    }

    public static void b(Rect rect, int i, int i2) {
        if (rect != null) {
            if (i < rect.left) {
                rect.left = i;
            }
            if (i > rect.right) {
                rect.right = i;
            }
            if (i2 > rect.top) {
                rect.top = i2;
            }
            if (i2 < rect.bottom) {
                rect.bottom = i2;
            }
        }
    }

    public static boolean a(List<BaseHoleOptions> list, PolygonHoleOptions polygonHoleOptions) {
        boolean z = false;
        for (int i = 0; i < list.size(); i++) {
            BaseHoleOptions baseHoleOptions = (BaseHoleOptions) list.get(i);
            if (baseHoleOptions instanceof PolygonHoleOptions) {
                z = a(((PolygonHoleOptions) baseHoleOptions).getPoints(), polygonHoleOptions.getPoints());
                if (z) {
                    return true;
                }
            } else if (baseHoleOptions instanceof CircleHoleOptions) {
                z = b(polygonHoleOptions.getPoints(), (CircleHoleOptions) baseHoleOptions);
                if (z) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return z;
    }

    public static boolean a(List<BaseHoleOptions> list, CircleHoleOptions circleHoleOptions) {
        boolean z = false;
        for (int i = 0; i < list.size(); i++) {
            BaseHoleOptions baseHoleOptions = (BaseHoleOptions) list.get(i);
            if (baseHoleOptions instanceof PolygonHoleOptions) {
                z = b(((PolygonHoleOptions) baseHoleOptions).getPoints(), circleHoleOptions);
                if (z) {
                    return true;
                }
            } else if (baseHoleOptions instanceof CircleHoleOptions) {
                z = a(circleHoleOptions, (CircleHoleOptions) baseHoleOptions);
                if (z) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return z;
    }

    public static boolean a(CircleHoleOptions circleHoleOptions, CircleHoleOptions circleHoleOptions2) {
        try {
            if (((double) AMapUtils.calculateLineDistance(circleHoleOptions2.getCenter(), circleHoleOptions.getCenter())) < circleHoleOptions.getRadius() + circleHoleOptions2.getRadius()) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            gf.b(th, "Util", "isPolygon2CircleIntersect");
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public static boolean b(List<LatLng> list, CircleHoleOptions circleHoleOptions) {
        boolean z;
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                arrayList.add(list.get(i));
            }
            arrayList.add(list.get(0));
            ArrayList arrayList2 = new ArrayList();
            int i2 = 0;
            while (i2 < arrayList.size() && i2 + 1 < arrayList.size()) {
                if (circleHoleOptions.getRadius() >= ((double) AMapUtils.calculateLineDistance(circleHoleOptions.getCenter(), (LatLng) arrayList.get(i2))) || circleHoleOptions.getRadius() >= ((double) AMapUtils.calculateLineDistance(circleHoleOptions.getCenter(), (LatLng) arrayList.get(i2 + 1)))) {
                    return true;
                }
                arrayList2.clear();
                arrayList2.add(arrayList.get(i2));
                arrayList2.add(arrayList.get(i2 + 1));
                if (circleHoleOptions.getRadius() >= ((double) AMapUtils.calculateLineDistance(circleHoleOptions.getCenter(), (LatLng) SpatialRelationUtil.calShortestDistancePoint((List<LatLng>) arrayList2, circleHoleOptions.getCenter()).second))) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return true;
                }
                i2++;
            }
        } catch (Throwable th) {
            gf.b(th, "Util", "isPolygon2CircleIntersect");
            ThrowableExtension.printStackTrace(th);
        }
        return false;
    }

    public static boolean a(List<LatLng> list, List<LatLng> list2) {
        int i = 0;
        while (i < list2.size()) {
            try {
                if (a((LatLng) list2.get(i), list)) {
                    return true;
                }
                i++;
            } catch (Throwable th) {
                gf.b(th, "Util", "isPolygon2PolygonIntersect");
                ThrowableExtension.printStackTrace(th);
                return false;
            }
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (a((LatLng) list.get(i2), list2)) {
                return true;
            }
        }
        return b(list, list2);
    }

    private static boolean b(List<LatLng> list, List<LatLng> list2) {
        int i = 0;
        while (i < list.size() && i + 1 < list.size()) {
            try {
                int i2 = 0;
                while (i2 < list2.size() && i2 + 1 < list2.size()) {
                    boolean a2 = eb.a((LatLng) list.get(i), (LatLng) list.get(i + 1), (LatLng) list2.get(i2), (LatLng) list2.get(i2 + 1));
                    if (a2) {
                        return a2;
                    }
                    i2++;
                }
                i++;
            } catch (Throwable th) {
                gf.b(th, "Util", "isSegmentsIntersect");
                ThrowableExtension.printStackTrace(th);
            }
        }
        return false;
    }
}
