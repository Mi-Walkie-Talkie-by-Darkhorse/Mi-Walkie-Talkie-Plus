package android.support.transition;

import android.annotation.TargetApi;
import android.os.IBinder;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.View;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: WindowIdPort */
class ao {
    private final IBinder a;

    private ao(IBinder iBinder) {
        this.a = iBinder;
    }

    static ao a(@NonNull View view) {
        return new ao(view.getWindowToken());
    }

    public boolean equals(Object obj) {
        return (obj instanceof ao) && ((ao) obj).a.equals(this.a);
    }
}
