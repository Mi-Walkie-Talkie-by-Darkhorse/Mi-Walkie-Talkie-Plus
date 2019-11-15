package android.support.transition;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: ScenePort */
final class l {
    Runnable a;
    private ViewGroup b;

    static void a(View view, l lVar) {
        view.setTag(R.id.transition_current_scene, lVar);
    }

    static l a(View view) {
        return (l) view.getTag(R.id.transition_current_scene);
    }

    public void a() {
        if (a(this.b) == this && this.a != null) {
            this.a.run();
        }
    }
}
