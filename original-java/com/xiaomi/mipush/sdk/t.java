package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.push.jg;

/* loaded from: classes2.dex */
public class t {
    public static <T extends jg<T, ?>> void a(Context context, Config config) {
        if (config != null) {
            Intent intent = new Intent();
            intent.setAction("action_cr_config");
            intent.putExtra("action_cr_event_switch", config.isEventUploadSwitchOpen());
            intent.putExtra("action_cr_event_frequency", config.getEventUploadFrequency());
            intent.putExtra("action_cr_perf_switch", config.isPerfUploadSwitchOpen());
            intent.putExtra("action_cr_perf_frequency", config.getPerfUploadFrequency());
            intent.putExtra("action_cr_event_en", config.isEventEncrypted());
            intent.putExtra("action_cr_max_file_size", config.getMaxFileLength());
            ao.a(context).m28a(intent);
        }
    }
}
