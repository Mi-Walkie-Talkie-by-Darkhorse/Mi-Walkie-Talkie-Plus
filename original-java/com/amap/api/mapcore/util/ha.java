package com.amap.api.mapcore.util;

import android.content.Context;
import java.io.File;
import java.lang.reflect.Constructor;

/* compiled from: InstanceFactory */
public class ha {
    public static <T> T a(Context context, fx fxVar, String str, Class cls, Class[] clsArr, Object[] objArr) throws fn {
        T a = a(b(context, fxVar), str, clsArr, objArr);
        if (a == null) {
            a = a(cls, clsArr, objArr);
            if (a == null) {
                throw new fn("获取对象错误");
            }
        }
        return a;
    }

    public static void a(final Context context, final String str) {
        try {
            gf.c().submit(new Runnable() {
                public void run() {
                    try {
                        hd.a(new gl(context, hf.a()), context, str);
                    } catch (Throwable th) {
                        hj.a(th, "InstanceFactory", "rollBack");
                    }
                }
            });
        } catch (Throwable th) {
            hj.a(th, "InstanceFactory", "rollBack");
        }
    }

    public static boolean a(Context context, fx fxVar) {
        try {
            File file = new File(hd.b(context, fxVar.a(), fxVar.b()));
            if (file.exists()) {
                return true;
            }
            hd.a(context, file, fxVar);
            return false;
        } catch (Throwable th) {
            hj.a(th, "IFactory", "isdowned");
            return false;
        }
    }

    public static Class a(Context context, fx fxVar, String str) {
        hb b = b(context, fxVar);
        try {
            if (a(b)) {
                return b.loadClass(str);
            }
            return null;
        } catch (Throwable th) {
            hj.a(th, "InstanceFactory", "loadpn");
            return null;
        }
    }

    private static hb b(Context context, fx fxVar) {
        if (context == null) {
            return null;
        }
        try {
            if (a(context, fxVar)) {
                return hi.a().a(context, fxVar);
            }
            return null;
        } catch (Throwable th) {
            hj.a(th, "IFactory", "gIns1");
            return null;
        }
    }

    private static boolean a(hb hbVar) {
        if (hbVar == null || !hbVar.a() || !hbVar.d) {
            return false;
        }
        return true;
    }

    private static <T> T a(hb hbVar, String str, Class[] clsArr, Object[] objArr) {
        try {
            if (a(hbVar)) {
                Class loadClass = hbVar.loadClass(str);
                if (loadClass != null) {
                    Constructor declaredConstructor = loadClass.getDeclaredConstructor(clsArr);
                    declaredConstructor.setAccessible(true);
                    return declaredConstructor.newInstance(objArr);
                }
            }
        } catch (Throwable th) {
            hj.a(th, "IFactory", "getWrap");
        }
        return null;
    }

    private static <T> T a(Class cls, Class[] clsArr, Object[] objArr) {
        T t = null;
        if (cls == null) {
            return t;
        }
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(clsArr);
            declaredConstructor.setAccessible(true);
            return declaredConstructor.newInstance(objArr);
        } catch (Throwable th) {
            hj.a(th, "IFactory", "gIns2()");
            return t;
        }
    }
}
