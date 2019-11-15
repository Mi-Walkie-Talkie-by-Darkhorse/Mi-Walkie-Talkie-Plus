package com.ifengyu.intercom.b;

import android.view.View;
import android.view.View.OnClickListener;
import java.util.Calendar;

/* compiled from: PerfectClickListener */
public abstract class y implements OnClickListener {
    private long a = 0;
    private int b = -1;

    /* access modifiers changed from: protected */
    public abstract void a(View view);

    public void onClick(View view) {
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        int id = view.getId();
        if (this.b != id) {
            this.b = id;
            this.a = timeInMillis;
            a(view);
        } else if (timeInMillis - this.a > 1000) {
            this.a = timeInMillis;
            a(view);
        }
    }
}
