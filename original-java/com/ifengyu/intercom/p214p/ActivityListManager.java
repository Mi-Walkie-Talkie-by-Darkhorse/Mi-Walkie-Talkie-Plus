package com.ifengyu.intercom.p214p;

import android.app.Activity;
import java.util.LinkedList;
import java.util.List;

/* renamed from: com.ifengyu.intercom.p.n */
/* loaded from: classes2.dex */
public class ActivityListManager {

    /* renamed from: a */
    public static List<Activity> f14475a = new LinkedList();

    /* renamed from: a */
    public static void m11092a(Activity activity) {
        f14475a.add(activity);
    }

    /* renamed from: b */
    public static void m11091b() {
        for (Activity activity : f14475a) {
            if (!activity.isFinishing()) {
                activity.finish();
            }
        }
    }

    /* renamed from: c */
    public static void m11090c(Activity activity) {
        f14475a.remove(activity);
    }
}
