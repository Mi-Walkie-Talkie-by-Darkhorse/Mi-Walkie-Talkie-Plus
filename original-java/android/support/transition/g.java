package android.support.transition;

import android.animation.Animator;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.ViewGroup;

/* compiled from: Fade */
public class g extends ai {
    public g(int i) {
        super(true);
        if (VERSION.SDK_INT >= 19) {
            if (i > 0) {
                this.a = new i(this, i);
            } else {
                this.a = new i(this);
            }
        } else if (i > 0) {
            this.a = new h(this, i);
        } else {
            this.a = new h(this);
        }
    }

    public g() {
        this(-1);
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
