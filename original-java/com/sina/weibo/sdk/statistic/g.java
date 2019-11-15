package com.sina.weibo.sdk.statistic;

import android.content.Context;
import com.sina.weibo.sdk.utils.c;
import java.util.Map;

/* compiled from: WBAgent */
public class g {
    public static void a(Object obj, String str, Map<String, String> map) {
        Object obj2;
        if (obj == null) {
            c.c("WBAgent", "unexpected null page or activity in onEvent");
        } else if (str == null) {
            c.c("WBAgent", "unexpected null eventId in onEvent");
        } else {
            if (obj instanceof Context) {
                obj2 = obj.getClass().getName();
            } else {
                obj2 = obj;
            }
            i.a().a((String) obj2, str, map);
        }
    }
}
