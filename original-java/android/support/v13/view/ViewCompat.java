package android.support.v13.view;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.support.v4.os.BuildCompat;

@TargetApi(13)
@RequiresApi(13)
public class ViewCompat extends android.support.v4.view.ViewCompat {
    static c a;

    private static class a implements c {
        a() {
        }
    }

    private static class b implements c {
        b() {
        }
    }

    interface c {
    }

    static {
        if (BuildCompat.isAtLeastN()) {
            a = new a();
        } else {
            a = new b();
        }
    }

    private ViewCompat() {
    }
}
