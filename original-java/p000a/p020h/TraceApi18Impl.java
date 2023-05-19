package p000a.p020h;

import android.os.Trace;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(18)
/* renamed from: a.h.b */
/* loaded from: classes.dex */
final class TraceApi18Impl {
    /* renamed from: a */
    public static void m26365a(@NonNull String str) {
        Trace.beginSection(str);
    }

    /* renamed from: b */
    public static void m26364b() {
        Trace.endSection();
    }
}
