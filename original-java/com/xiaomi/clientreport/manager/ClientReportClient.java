package com.xiaomi.clientreport.manager;

import android.content.Context;
import android.os.Process;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.processor.C5889a;
import com.xiaomi.clientreport.processor.C5890b;
import com.xiaomi.clientreport.processor.IEventProcessor;
import com.xiaomi.clientreport.processor.IPerfProcessor;
import com.xiaomi.push.C6175g;

/* loaded from: classes2.dex */
public class ClientReportClient {
    public static void init(Context context) {
        init(context, Config.defaultConfig(context), new C5889a(context), new C5890b(context));
    }

    public static void init(Context context, Config config) {
        init(context, config, new C5889a(context), new C5890b(context));
    }

    public static void init(Context context, Config config, IEventProcessor iEventProcessor, IPerfProcessor iPerfProcessor) {
        AbstractC5876b.m4139c("init in process " + C6175g.m2818a(context) + " pid :" + Process.myPid() + " threadId: " + Thread.currentThread().getId());
        C5880a.m4132a(context).m4131a(config, iEventProcessor, iPerfProcessor);
        if (C6175g.m2817a(context)) {
            AbstractC5876b.m4139c("init in process\u3000start scheduleJob");
            C5880a.m4132a(context).m4134a();
        }
    }

    public static void reportEvent(Context context, EventClientReport eventClientReport) {
        if (eventClientReport != null) {
            C5880a.m4132a(context).m4130a(eventClientReport);
        }
    }

    public static void reportPerf(Context context, PerfClientReport perfClientReport) {
        if (perfClientReport != null) {
            C5880a.m4132a(context).m4129a(perfClientReport);
        }
    }

    public static void updateConfig(Context context, Config config) {
        if (config == null) {
            return;
        }
        C5880a.m4132a(context).m4121a(config.isEventUploadSwitchOpen(), config.isPerfUploadSwitchOpen(), config.getEventUploadFrequency(), config.getPerfUploadFrequency());
    }
}
