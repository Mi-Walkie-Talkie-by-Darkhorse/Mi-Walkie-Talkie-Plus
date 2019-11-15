package com.ifengyu.im.DB.sp;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class SystemConfigSp {
    private static SystemConfigSp systemConfigSp = null;
    private Context ctx;
    private final String fileName = "systemconfig.ini";
    SharedPreferences sharedPreferences;

    public enum SysCfgDimension {
        KEYBOARDHEIGHT,
        DEFAULTINPUTMETHOD,
        DISCOVERYURI,
        LOGINSERVER,
        DISCOVERYDATA,
        MSFSSERVER
    }

    public static SystemConfigSp instance() {
        if (systemConfigSp == null) {
            synchronized (SystemConfigSp.class) {
                systemConfigSp = new SystemConfigSp();
            }
        }
        return systemConfigSp;
    }

    private SystemConfigSp() {
    }

    public void init(Context context) {
        this.ctx = context;
        this.sharedPreferences = context.getSharedPreferences("systemconfig.ini", 0);
    }

    public String getStrConfig(SysCfgDimension sysCfgDimension) {
        return this.sharedPreferences.getString(sysCfgDimension.name(), "");
    }

    public void setStrConfig(SysCfgDimension sysCfgDimension, String str) {
        Editor edit = this.sharedPreferences.edit();
        edit.putString(sysCfgDimension.name(), str);
        edit.commit();
    }

    public int getIntConfig(SysCfgDimension sysCfgDimension) {
        return this.sharedPreferences.getInt(sysCfgDimension.name(), 0);
    }

    public void setIntConfig(SysCfgDimension sysCfgDimension, int i) {
        Editor edit = this.sharedPreferences.edit();
        edit.putInt(sysCfgDimension.name(), i);
        edit.commit();
    }

    public int getIntConfig(String str) {
        return this.sharedPreferences.getInt(str, 0);
    }

    public void setIntConfig(String str, int i) {
        Editor edit = this.sharedPreferences.edit();
        edit.putInt(str, i);
        edit.commit();
    }
}
