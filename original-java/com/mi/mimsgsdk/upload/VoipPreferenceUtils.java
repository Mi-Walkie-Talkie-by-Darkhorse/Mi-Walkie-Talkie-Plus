package com.mi.mimsgsdk.upload;

import android.content.Context;

public class VoipPreferenceUtils extends PreferenceUtils {
    public static final String PREF_KEY_ATTACHMENT_BASE_ID = "pref_key_attachment_base_id";

    public static void setSettingInt(Context context, String str, int i) {
        PreferenceUtils.setSettingInt(context, str, i);
    }
}
