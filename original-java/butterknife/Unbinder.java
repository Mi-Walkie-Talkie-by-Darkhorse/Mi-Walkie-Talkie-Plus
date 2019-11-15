package butterknife;

import android.support.annotation.UiThread;

public interface Unbinder {
    public static final Unbinder EMPTY = new Unbinder() {
        public void unbind() {
        }
    };

    @UiThread
    void unbind();
}
