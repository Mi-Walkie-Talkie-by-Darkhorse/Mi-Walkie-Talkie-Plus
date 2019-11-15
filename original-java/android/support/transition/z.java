package android.support.transition;

import android.animation.Animator;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.ViewGroup;

/* compiled from: TransitionSet */
public class z extends m {
    public z() {
        super(true);
        if (VERSION.SDK_INT < 19) {
            this.a = new aa(this);
        } else {
            this.a = new ac(this);
        }
    }

    @NonNull
    public z a(int i) {
        ((ab) this.a).b(i);
        return this;
    }

    @NonNull
    public z a(@NonNull m mVar) {
        ((ab) this.a).b(mVar.a);
        return this;
    }

    public void b(@NonNull ae aeVar) {
        this.a.b(aeVar);
    }

    public void a(@NonNull ae aeVar) {
        this.a.c(aeVar);
    }

    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @NonNull ae aeVar, @NonNull ae aeVar2) {
        return this.a.a(viewGroup, aeVar, aeVar2);
    }
}
