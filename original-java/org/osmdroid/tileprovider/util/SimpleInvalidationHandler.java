package org.osmdroid.tileprovider.util;

import android.os.Handler;
import android.os.Message;
import android.view.View;

public class SimpleInvalidationHandler extends Handler {
    private View mView;

    public SimpleInvalidationHandler(View view) {
        this.mView = view;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                if (this.mView != null) {
                    this.mView.invalidate();
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void destroy() {
        this.mView = null;
    }
}
