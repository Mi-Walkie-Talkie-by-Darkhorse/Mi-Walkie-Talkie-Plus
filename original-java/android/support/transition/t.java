package android.support.transition;

import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.ViewGroup;

/* compiled from: TransitionManager */
public class t {
    private static w a;

    static {
        if (VERSION.SDK_INT < 19) {
            a = new v();
        } else {
            a = new x();
        }
    }

    public static void a(@NonNull ViewGroup viewGroup, @Nullable m mVar) {
        a.a(viewGroup, mVar == null ? null : mVar.a);
    }
}
