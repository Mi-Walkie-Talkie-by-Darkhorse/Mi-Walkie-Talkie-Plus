package com.amap.api.col.sl;

import android.content.Context;

/* compiled from: RollBackDynamic */
public final class fw {
    static boolean a = false;
    static boolean b = false;
    static boolean c = false;
    static boolean d = false;
    static int e = 0;
    static int f = 0;
    static boolean g = true;
    static boolean h = false;

    public static void a(Context context, bz bzVar) {
        if (!d) {
            c = cy.a(context, bzVar);
            d = true;
            if (!c && fq.c()) {
                cy.a(context, "loc");
                fv.a("dexrollbackstatistics", "RollBack because of version error");
            }
        }
    }

    private static boolean e(Context context) {
        if (!d) {
            a(context, fq.b());
        }
        return c;
    }

    public static void a(Context context) {
        try {
            if (e(context) && !a) {
                fx.a(context, "loc", "startMark", fx.b(context, "loc", "startMark", 0) + 1);
                a = true;
            }
        } catch (Throwable th) {
            fq.a(th, "RollBackDynamic", "AddStartMark");
        }
    }

    public static void b(Context context) {
        try {
            if (e(context) && !b) {
                fx.a(context, "loc", "endMark", fx.b(context, "loc", "endMark", 0) + 1);
                b = true;
            }
        } catch (Throwable th) {
            fq.a(th, "RollBackDynamic", "AddEndMark");
        }
    }

    public static boolean c(Context context) {
        try {
            if (!e(context)) {
                return false;
            }
            if (h) {
                return g;
            }
            if (e == 0) {
                e = fx.b(context, "loc", "startMark", 0);
            }
            if (f == 0) {
                f = fx.b(context, "loc", "endMark", 0);
            }
            if (!a && !b) {
                if (e < f) {
                    a(context, 0);
                    g = true;
                }
                if (e - f > 0 && e > 99) {
                    a(context, 0);
                    g = true;
                }
                if (e - f > 0 && e < 99) {
                    a(context, -2);
                    g = false;
                }
                if (e - f > 0 && f < 0) {
                    a(context, "loc", "checkMark");
                    g = false;
                }
            }
            fx.a(context, "loc", "isload", g);
            h = true;
            return g;
        } catch (Throwable th) {
            fq.a(th, "RollBackDynamic", "checkMark");
        }
    }

    public static boolean d(Context context) {
        try {
            if (!e(context)) {
                return false;
            }
            return fx.b(context, "loc", "isload", false);
        } catch (Throwable th) {
            fq.a(th, "RollBackDynamic", "isLoad");
            return true;
        }
    }

    private static void a(Context context, int i) {
        try {
            if (e(context)) {
                fx.a(context, "loc", "endMark", i);
                fx.a(context, "loc", "startMark", i);
            }
        } catch (Throwable th) {
            fq.a(th, "RollBackDynamic", "resetMark");
        }
    }

    public static void a(Context context, String str, String str2) {
        try {
            cy.a(context, str);
            fv.a("dexrollbackstatistics", "RollBack because of " + str2);
        } catch (Throwable th) {
            fq.a(th, "RollBackDynamic", "rollBackDynamicFile");
        }
    }
}
