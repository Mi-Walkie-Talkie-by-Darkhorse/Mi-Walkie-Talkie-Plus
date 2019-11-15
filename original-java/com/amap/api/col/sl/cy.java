package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.lang.reflect.Constructor;

/* compiled from: InstanceFactory */
public final class cy {
    public static <T> T a(Context context, bz bzVar, String str, Class cls, Class[] clsArr, Object[] objArr) throws bo {
        T a = a(b(context, bzVar), str, clsArr, objArr);
        if (a == null) {
            a = a(cls, clsArr, objArr);
            if (a == null) {
                throw new bo("获取对象错误");
            }
        }
        return a;
    }

    public static void a(final Context context, final String str) {
        try {
            dg.b().a().submit(new Runnable() {
                public final void run() {
                    try {
                        db.a(new cq(context, dd.b()), context, str);
                    } catch (Throwable th) {
                        cj.a(th, "InstanceFactory", "rollBack");
                    }
                }
            });
        } catch (Throwable th) {
            cj.a(th, "InstanceFactory", "rollBack");
        }
    }

    public static boolean a(Context context, bz bzVar) {
        try {
            if (!new File(db.a(context)).exists()) {
                return false;
            }
            File file = new File(db.b(context, bzVar.a(), bzVar.b()));
            if (file.exists()) {
                return true;
            }
            File parentFile = file.getParentFile();
            if (file.exists() || parentFile == null || !parentFile.exists()) {
                return false;
            }
            db.c(context, bzVar.a(), bzVar.b());
            return false;
        } catch (Throwable th) {
            cj.a(th, "IFactory", "isdowned");
            return false;
        }
    }

    public static Class a(Context context, bz bzVar, String str) {
        cz b = b(context, bzVar);
        try {
            if (a(b)) {
                return b.loadClass(str);
            }
            return null;
        } catch (Throwable th) {
            cj.a(th, "InstanceFactory", "loadpn");
            return null;
        }
    }

    public static void a(Context context, cx cxVar, bz bzVar) {
        if (cxVar != null) {
            try {
                if (!TextUtils.isEmpty(cxVar.a()) && !TextUtils.isEmpty(cxVar.b()) && !TextUtils.isEmpty(cxVar.c)) {
                    new cw(context, cxVar, bzVar).a();
                }
            } catch (Throwable th) {
                cj.a(th, "IFactory", "dDownload()");
            }
        }
    }

    private static cz b(Context context, bz bzVar) {
        if (context == null) {
            return null;
        }
        try {
            if (a(context, bzVar)) {
                return dg.b().a(context, bzVar);
            }
            return null;
        } catch (Throwable th) {
            cj.a(th, "IFactory", "gIns1");
            return null;
        }
    }

    private static boolean a(cz czVar) {
        if (czVar == null || !czVar.a() || !czVar.d) {
            return false;
        }
        return true;
    }

    private static <T> T a(cz czVar, String str, Class[] clsArr, Object[] objArr) {
        try {
            if (a(czVar)) {
                Class loadClass = czVar.loadClass(str);
                if (loadClass != null) {
                    Constructor declaredConstructor = loadClass.getDeclaredConstructor(clsArr);
                    declaredConstructor.setAccessible(true);
                    return declaredConstructor.newInstance(objArr);
                }
            }
        } catch (Throwable th) {
            cj.a(th, "IFactory", "getWrap");
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
            cj.a(th, "IFactory", "gIns2()");
            return t;
        }
    }
}
