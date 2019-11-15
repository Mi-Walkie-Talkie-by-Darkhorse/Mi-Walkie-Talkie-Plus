package com.shenma.speechrecognition;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.speech.RecognitionListener;
import android.speech.SpeechRecognizer;

public class e {
    private SpeechRecognizer a;
    private l b = new l();
    private v c = new v();
    private boolean d;
    private ad e;

    private e() {
    }

    private e(Context context, String str, String str2) {
        this.b.a(str);
        this.b.b(str2);
        this.a = SpeechRecognizer.createSpeechRecognizer(context, new ComponentName(context, ShenmaRecognitionService.class));
    }

    public static e a(Context context, String str, String str2) {
        return new e(context, str, str2);
    }

    public void a() {
        aa.a("startListening get called", new Object[0]);
        if (this.e != null) {
            this.e.a();
        }
        this.d = this.b.d();
        Intent intent = new Intent();
        intent.putExtra("Config", this.b);
        intent.putExtra("Property", this.c);
        this.a.startListening(intent);
    }

    public void a(RecognitionListener recognitionListener) {
        aa.a("setRecognitionListener get called with listener", new Object[0]);
        this.e = new ad(recognitionListener);
        this.a.setRecognitionListener(this.e);
    }

    public void a(String str) {
        aa.a("savePath:%s", str);
        this.b.c(str);
    }

    public void a(boolean z) {
        aa.a("realTimeOutput:%b", Boolean.valueOf(z));
        this.b.a(z);
    }

    public void b() {
        aa.a("stopListening get called", new Object[0]);
        this.a.stopListening();
    }

    public void b(boolean z) {
        aa.a("setVad open:%b", Boolean.valueOf(z));
        this.d = z;
        this.b.b(z);
    }

    public void c() {
        aa.a("cancel get called", new Object[0]);
        this.a.cancel();
    }

    public void c(boolean z) {
        this.b.c(z);
    }

    public void d() {
        aa.a("destroy get called", new Object[0]);
        this.a.destroy();
    }
}
