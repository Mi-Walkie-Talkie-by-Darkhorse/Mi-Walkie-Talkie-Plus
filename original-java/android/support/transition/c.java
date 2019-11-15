package android.support.transition;

import android.animation.Animator;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.ViewGroup;

/* compiled from: ChangeBounds */
public class c extends m {
    public c() {
        super(true);
        if (VERSION.SDK_INT < 19) {
            this.a = new d(this);
        } else {
            this.a = new e(this);
        }
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
