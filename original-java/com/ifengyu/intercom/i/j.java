package com.ifengyu.intercom.i;

import android.app.Activity;
import java.util.LinkedList;
import java.util.List;

/* compiled from: ActivityManager.java */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    public static List<Activity> f5322a = new LinkedList();

    public static void a(Activity activity) {
        f5322a.add(activity);
    }

    public static void b(Activity activity) {
        f5322a.remove(activity);
    }

    public static void a() {
        for (Activity activity : f5322a) {
            if (!activity.isFinishing()) {
                activity.finish();
            }
        }
    }
}
