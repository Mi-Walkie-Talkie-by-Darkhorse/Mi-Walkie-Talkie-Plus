package com.afollestad.materialdialogs;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.support.v4.view.GravityCompat;

public enum GravityEnum {
    START,
    CENTER,
    END;
    
    private static final boolean d = false;

    @SuppressLint({"RtlHardcoded"})
    public int a() {
        switch (this) {
            case START:
                if (d) {
                    return GravityCompat.START;
                }
                return 3;
            case CENTER:
                return 1;
            case END:
                if (d) {
                    return GravityCompat.END;
                }
                return 5;
            default:
                throw new IllegalStateException("Invalid gravity constant");
        }
    }

    @TargetApi(17)
    public int b() {
        switch (this) {
            case CENTER:
                return 4;
            case END:
                return 6;
            default:
                return 5;
        }
    }
}
