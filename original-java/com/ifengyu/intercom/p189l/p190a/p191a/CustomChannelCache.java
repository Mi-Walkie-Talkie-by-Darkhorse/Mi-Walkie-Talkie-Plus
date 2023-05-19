package com.ifengyu.intercom.p189l.p190a.p191a;

import com.ifengyu.intercom.models.ChannelModel;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.ifengyu.intercom.l.a.a.a */
/* loaded from: classes2.dex */
public class CustomChannelCache {

    /* renamed from: a */
    private static boolean f14045a;

    /* renamed from: b */
    private static final ConcurrentHashMap<Integer, ChannelModel> f14046b = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static void m11954a() {
        f14046b.clear();
    }

    /* renamed from: b */
    public static boolean m11953b(Integer num) {
        return f14046b.containsKey(num);
    }

    /* renamed from: c */
    public static ArrayList<ChannelModel> m11952c() {
        return new ArrayList<>(f14046b.values());
    }

    /* renamed from: d */
    public static boolean m11951d() {
        return f14045a;
    }

    /* renamed from: e */
    public static void m11950e(Integer num, ChannelModel channelModel) {
        f14046b.put(num, channelModel);
    }

    /* renamed from: f */
    public static void m11949f(Integer num) {
        f14046b.remove(num);
    }

    /* renamed from: g */
    public static void m11948g(boolean z) {
        f14045a = z;
    }

    /* renamed from: h */
    public static int m11947h() {
        return f14046b.size();
    }
}
