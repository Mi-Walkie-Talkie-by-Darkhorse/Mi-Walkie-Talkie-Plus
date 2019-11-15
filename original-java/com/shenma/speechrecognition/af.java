package com.shenma.speechrecognition;

import android.content.Context;
import android.content.SharedPreferences;

class af {
    private SharedPreferences a;

    private af() {
    }

    public static af a() {
        return i.a;
    }

    public void a(Context context) {
        this.a = context.getSharedPreferences("ShenmaSpeech", 0);
    }

    public void a(String str) {
        this.a.edit().putString("cookie", str).commit();
    }

    public String b() {
        return this.a.getString("cookie", "");
    }

    public boolean c() {
        return b().length() > 0;
    }
}
