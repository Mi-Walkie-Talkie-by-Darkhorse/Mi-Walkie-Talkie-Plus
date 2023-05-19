package com.ifengyu.intercom.p189l.p190a.p191a;

import com.ifengyu.intercom.models.ChannelModel;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.ifengyu.intercom.l.a.a.b */
/* loaded from: classes2.dex */
public class RemoteChannelCache {

    /* renamed from: a */
    private static boolean f14047a;

    /* renamed from: b */
    private static final ConcurrentHashMap<Integer, ChannelModel> f14048b = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static void m11946a() {
        f14048b.clear();
    }

    /* renamed from: b */
    public static ChannelModel m11945b(Integer num) {
        return f14048b.get(num);
    }

    /* renamed from: c */
    public static ArrayList<ChannelModel> m11944c() {
        return new ArrayList<>(f14048b.values());
    }

    /* renamed from: d */
    public static boolean m11943d() {
        return f14047a;
    }

    /* renamed from: e */
    public static void m11942e(Integer num, ChannelModel channelModel) {
        f14048b.put(num, channelModel);
    }

    /* renamed from: f */
    public static void m11941f(Integer num) {
        f14048b.remove(num);
    }

    /* renamed from: g */
    public static void m11940g(boolean z) {
        f14047a = z;
    }

    /* renamed from: h */
    public static int m11939h() {
        return f14048b.size();
    }
}
