package android.support.v4.app;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@TargetApi(9)
@RequiresApi(9)
class RemoteInputCompatBase {

    public static abstract class RemoteInput {

        public interface Factory {
            RemoteInput build(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, Bundle bundle);

            RemoteInput[] newArray(int i);
        }

        /* access modifiers changed from: protected */
        public abstract boolean getAllowFreeFormInput();

        /* access modifiers changed from: protected */
        public abstract CharSequence[] getChoices();

        /* access modifiers changed from: protected */
        public abstract Bundle getExtras();

        /* access modifiers changed from: protected */
        public abstract CharSequence getLabel();

        /* access modifiers changed from: protected */
        public abstract String getResultKey();
    }

    RemoteInputCompatBase() {
    }
}
