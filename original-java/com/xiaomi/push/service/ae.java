package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.push.ir;
import java.util.Map;

/* loaded from: classes2.dex */
public class ae {

    /* renamed from: a  reason: collision with root package name */
    private static a f9231a;

    /* renamed from: a  reason: collision with other field name */
    private static b f904a;

    /* loaded from: classes2.dex */
    public interface a {
        Map<String, String> a(Context context, ir irVar);

        /* renamed from: a  reason: collision with other method in class */
        void m578a(Context context, ir irVar);

        boolean a(Context context, ir irVar, boolean z);
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(ir irVar);

        void a(String str);

        /* renamed from: a  reason: collision with other method in class */
        boolean m579a(ir irVar);
    }

    public static Map<String, String> a(Context context, ir irVar) {
        a aVar = f9231a;
        if (aVar != null && irVar != null) {
            return aVar.a(context, irVar);
        }
        com.xiaomi.channel.commonutils.logger.b.m1a("pepa listener or container is null");
        return null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static void m576a(Context context, ir irVar) {
        a aVar = f9231a;
        if (aVar == null || irVar == null) {
            com.xiaomi.channel.commonutils.logger.b.m1a("handle msg wrong");
        } else {
            aVar.m578a(context, irVar);
        }
    }

    public static void a(ir irVar) {
        b bVar = f904a;
        if (bVar == null || irVar == null) {
            com.xiaomi.channel.commonutils.logger.b.m1a("pepa clearMessage is null");
        } else {
            bVar.a(irVar);
        }
    }

    public static void a(String str) {
        b bVar = f904a;
        if (bVar == null || str == null) {
            com.xiaomi.channel.commonutils.logger.b.m1a("pepa clearMessage is null");
        } else {
            bVar.a(str);
        }
    }

    public static boolean a(Context context, ir irVar, boolean z) {
        a aVar = f9231a;
        if (aVar != null && irVar != null) {
            return aVar.a(context, irVar, z);
        }
        com.xiaomi.channel.commonutils.logger.b.m1a("pepa judement listener or container is null");
        return false;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m577a(ir irVar) {
        b bVar = f904a;
        if (bVar != null && irVar != null) {
            return bVar.m579a(irVar);
        }
        com.xiaomi.channel.commonutils.logger.b.m1a("pepa handleReceiveMessage is null");
        return false;
    }
}
