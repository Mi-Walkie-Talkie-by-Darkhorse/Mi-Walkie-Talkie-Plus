package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.File;

/* compiled from: ResourcesUtil */
public class dz {
    private static boolean a;

    static {
        a = false;
        a = new File("/system/framework/amap.jar").exists();
    }

    public static AssetManager a(Context context) {
        if (context == null) {
            return null;
        }
        AssetManager assets = context.getAssets();
        if (!a) {
            return assets;
        }
        try {
            assets.getClass().getDeclaredMethod("addAssetPath", new Class[]{String.class}).invoke(assets, new Object[]{"/system/framework/amap.jar"});
            return assets;
        } catch (Throwable th) {
            gf.b(th, "ResourcesUtil", "getSelfAssets");
            return assets;
        }
    }

    public static int a(Context context, float f) {
        return (int) ((context.getResources().getDisplayMetrics().density * f) + 0.5f);
    }
}
