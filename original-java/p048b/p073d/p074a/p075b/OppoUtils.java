package p048b.p073d.p074a.p075b;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.util.Log;

/* renamed from: b.d.a.b.d */
/* loaded from: classes2.dex */
public class OppoUtils {
    /* renamed from: a */
    public static boolean m21034a(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return m21033b(context, 24);
        }
        return true;
    }

    @TargetApi(19)
    /* renamed from: b */
    private static boolean m21033b(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            try {
                Class cls = Integer.TYPE;
                return ((Integer) AppOpsManager.class.getDeclaredMethod("checkOp", cls, cls, String.class).invoke(appOpsManager, Integer.valueOf(i), Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() == 0;
            } catch (Exception e) {
                Log.e("OppoUtils", Log.getStackTraceString(e));
            }
        } else {
            Log.e("OppoUtils", "Below API 19 cannot invoke!");
        }
        return false;
    }
}
