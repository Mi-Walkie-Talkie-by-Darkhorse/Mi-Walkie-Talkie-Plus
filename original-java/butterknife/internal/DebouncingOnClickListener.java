package butterknife.internal;

import android.view.View;
import android.view.View.OnClickListener;

public abstract class DebouncingOnClickListener implements OnClickListener {
    private static final Runnable ENABLE_AGAIN = new Runnable() {
        public void run() {
            DebouncingOnClickListener.enabled = true;
        }
    };
    static boolean enabled = true;

    public abstract void doClick(View view);

    public final void onClick(View view) {
        if (enabled) {
            enabled = false;
            view.post(ENABLE_AGAIN);
            doClick(view);
        }
    }
}
