package com.amap.api.maps.model;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.widget.FrameLayout;
import com.amap.api.mapcore.util.dr.a;
import com.amap.api.mapcore.util.ee;
import com.amap.api.mapcore.util.p;
import java.io.FileInputStream;
import java.io.InputStream;

public final class BitmapDescriptorFactory {
    public static final float HUE_AZURE = 210.0f;
    public static final float HUE_BLUE = 240.0f;
    public static final float HUE_CYAN = 180.0f;
    public static final float HUE_GREEN = 120.0f;
    public static final float HUE_MAGENTA = 300.0f;
    public static final float HUE_ORANGE = 30.0f;
    public static final float HUE_RED = 0.0f;
    public static final float HUE_ROSE = 330.0f;
    public static final float HUE_VIOLET = 270.0f;
    public static final float HUE_YELLOW = 60.0f;

    public static BitmapDescriptor fromResource(int i) {
        try {
            Context context = p.a;
            if (context != null) {
                return fromBitmap(BitmapFactory.decodeStream(context.getResources().openRawResource(i)));
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static BitmapDescriptor fromView(View view) {
        try {
            Context context = p.a;
            if (context == null) {
                return null;
            }
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.addView(view);
            frameLayout.setDrawingCacheEnabled(true);
            return fromBitmap(ee.a((View) frameLayout));
        } catch (Throwable th) {
            return null;
        }
    }

    public static BitmapDescriptor fromPath(String str) {
        try {
            return fromBitmap(BitmapFactory.decodeFile(str));
        } catch (Throwable th) {
            return null;
        }
    }

    public static BitmapDescriptor fromAsset(String str) {
        try {
            Context context = p.a;
            if (context != null) {
                return fromBitmap(ee.a(context, str));
            }
            InputStream resourceAsStream = BitmapDescriptorFactory.class.getResourceAsStream("/assets/" + str);
            Bitmap decodeStream = BitmapFactory.decodeStream(resourceAsStream);
            resourceAsStream.close();
            return fromBitmap(decodeStream);
        } catch (Throwable th) {
            return null;
        }
    }

    public static BitmapDescriptor fromFile(String str) {
        try {
            Context context = p.a;
            if (context == null) {
                return null;
            }
            FileInputStream openFileInput = context.openFileInput(str);
            Bitmap decodeStream = BitmapFactory.decodeStream(openFileInput);
            openFileInput.close();
            BitmapDescriptor fromBitmap = fromBitmap(decodeStream);
            decodeStream.recycle();
            return fromBitmap;
        } catch (Throwable th) {
            return null;
        }
    }

    public static BitmapDescriptor defaultMarker() {
        try {
            return fromAsset(a.marker_default.name() + ".png");
        } catch (Throwable th) {
            return null;
        }
    }

    public static BitmapDescriptor defaultMarker(float f) {
        float f2;
        try {
            float f3 = (float) ((((int) (15.0f + f)) / 30) * 30);
            if (f3 > 330.0f) {
                f2 = 330.0f;
            } else if (f3 < 0.0f) {
                f2 = 0.0f;
            } else {
                f2 = f3;
            }
            String str = "";
            if (f2 == 0.0f) {
                str = "RED";
            } else if (f2 == 30.0f) {
                str = "ORANGE";
            } else if (f2 == 60.0f) {
                str = "YELLOW";
            } else if (f2 == 120.0f) {
                str = "GREEN";
            } else if (f2 == 180.0f) {
                str = "CYAN";
            } else if (f2 == 210.0f) {
                str = "AZURE";
            } else if (f2 == 240.0f) {
                str = "BLUE";
            } else if (f2 == 270.0f) {
                str = "VIOLET";
            } else if (f2 == 300.0f) {
                str = "MAGENTA";
            } else if (f2 == 330.0f) {
                str = "ROSE";
            }
            return fromAsset(str + ".png");
        } catch (Throwable th) {
            return null;
        }
    }

    public static BitmapDescriptor fromBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        try {
            return new BitmapDescriptor(bitmap);
        } catch (Throwable th) {
            return null;
        }
    }
}
