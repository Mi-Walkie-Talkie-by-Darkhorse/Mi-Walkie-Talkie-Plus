package com.ifengyu.intercom.lite.a;

import com.ifengyu.intercom.lite.models.ChannelModel;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: ChannelCache.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static ConcurrentHashMap<Integer, ChannelModel> f5333a = new ConcurrentHashMap<>();

    public static void a(Integer num, ChannelModel channelModel) {
        f5333a.put(num, channelModel);
    }

    public static List<ChannelModel> b() {
        return new ArrayList(f5333a.values());
    }

    public static int c() {
        return f5333a.size();
    }

    public static void a() {
        f5333a.clear();
    }
}
