package com.mi.mimsgsdk.utils;

import android.content.Context;
import android.text.TextUtils;
import com.mi.mimsgsdk.upload.PreferenceUtils;
import com.xiaomi.channel.common.audio.CommonUtils;

public class ReleaseChannelUtils {
    private static String DEFAULT_CHANNEL = "DEFAULT";
    private static String curChannel;

    public static String getReleaseChannel(Context context) {
        if (TextUtils.isEmpty(curChannel)) {
            if (!Constants.ReleaseChannel.equals(DEFAULT_CHANNEL)) {
                if (Constants.isDefaultChanel) {
                    curChannel = Constants.DEBUG_CHANNEL;
                } else {
                    curChannel = Constants.ReleaseChannel;
                }
                PreferenceUtils.setSettingString(context, PreferenceUtils.KEY_RELEASE_CHANNEL, Constants.ReleaseChannel);
            } else {
                curChannel = PreferenceUtils.getSettingString(context, PreferenceUtils.KEY_RELEASE_CHANNEL, DEFAULT_CHANNEL);
            }
            if (curChannel.equals("3000_1_android") && !CommonUtils.isChineseLocale(context)) {
                curChannel = "3000_2_android";
            }
        }
        return curChannel;
    }
}
