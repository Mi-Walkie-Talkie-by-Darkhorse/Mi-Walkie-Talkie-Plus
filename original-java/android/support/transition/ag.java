package android.support.transition;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: ViewGroupOverlay */
class ag extends ah {
    ag(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    public static ag a(ViewGroup viewGroup) {
        return (ag) ah.d(viewGroup);
    }

    public void a(View view) {
        this.a.a(view);
    }

    public void b(View view) {
        this.a.b(view);
    }
}
