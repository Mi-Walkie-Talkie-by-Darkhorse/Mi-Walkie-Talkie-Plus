package com.ifengyu.im.DB.sp;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.ifengyu.im.imservice.event.SessionEvent;
import de.greenrobot.event.c;
import java.util.HashSet;
import java.util.Set;

public class ConfigurationSp {
    private static ConfigurationSp configurationSp = null;
    private Context ctx;
    private String fileName;
    private int loginId;
    private SharedPreferences sharedPreferences;

    public enum CfgDimension {
        NOTIFICATION,
        SOUND,
        VIBRATION,
        SESSIONTOP,
        SESSIONTALK
    }

    public enum TimeLine {
        SESSION_UPDATE_TIME
    }

    public static ConfigurationSp instance(Context context, int i) {
        ConfigurationSp configurationSp2;
        if (configurationSp != null && configurationSp.loginId == i) {
            return configurationSp;
        }
        synchronized (ConfigurationSp.class) {
            configurationSp = new ConfigurationSp(context, i);
            configurationSp2 = configurationSp;
        }
        return configurationSp2;
    }

    private ConfigurationSp(Context context, int i) {
        this.ctx = context;
        this.loginId = i;
        this.fileName = "User_" + i + ".ini";
        this.sharedPreferences = context.getSharedPreferences(this.fileName, 0);
    }

    public HashSet<String> getSessionTopList() {
        Set stringSet = this.sharedPreferences.getStringSet(CfgDimension.SESSIONTOP.name(), null);
        if (stringSet == null) {
            return null;
        }
        return (HashSet) stringSet;
    }

    public boolean isTopSession(String str) {
        HashSet sessionTopList = getSessionTopList();
        if (sessionTopList == null || sessionTopList.size() <= 0 || !sessionTopList.contains(str)) {
            return false;
        }
        return true;
    }

    public void setSessionTop(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            Set stringSet = this.sharedPreferences.getStringSet(CfgDimension.SESSIONTOP.name(), null);
            HashSet hashSet = new HashSet();
            if (stringSet != null && stringSet.size() > 0) {
                hashSet.addAll(stringSet);
            }
            if (z) {
                hashSet.add(str);
            } else if (hashSet.contains(str)) {
                hashSet.remove(str);
            }
            Editor edit = this.sharedPreferences.edit();
            edit.putStringSet(CfgDimension.SESSIONTOP.name(), hashSet);
            edit.apply();
            c.a().e(SessionEvent.SET_SESSION_TOP);
        }
    }

    public void setSessionTalk(String str) {
        this.sharedPreferences.edit().putString(CfgDimension.SESSIONTALK.name(), str).apply();
        c.a().e(SessionEvent.SET_SESSION_TALK);
    }

    public String getSessionTalk() {
        return this.sharedPreferences.getString(CfgDimension.SESSIONTALK.name(), null);
    }

    public boolean getCfg(String str, CfgDimension cfgDimension) {
        return this.sharedPreferences.getBoolean(cfgDimension.name() + str, cfgDimension != CfgDimension.NOTIFICATION);
    }

    public void setCfg(String str, CfgDimension cfgDimension, boolean z) {
        Editor edit = this.sharedPreferences.edit();
        edit.putBoolean(cfgDimension.name() + str, z);
        edit.commit();
    }

    public int getTimeLine(TimeLine timeLine) {
        return this.sharedPreferences.getInt(timeLine.name(), 0);
    }

    public void setTimeLine(TimeLine timeLine, int i) {
        Editor edit = this.sharedPreferences.edit();
        edit.putInt(timeLine.name(), i);
        edit.commit();
    }
}
