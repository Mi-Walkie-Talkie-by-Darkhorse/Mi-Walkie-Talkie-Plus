package com.ifengyu.intercom.b;

import android.app.Activity;
import java.util.LinkedList;
import java.util.List;

/* compiled from: ActivityManager */
public class d {
    public static List<Activity> a = new LinkedList();

    public static void a(Activity activity) {
        a.add(activity);
    }

    public static void b(Activity activity) {
        a.remove(activity);
    }

    public static void a() {
        for (Activity activity : a) {
            if (!activity.isFinishing()) {
                activity.finish();
            }
        }
    }
}
