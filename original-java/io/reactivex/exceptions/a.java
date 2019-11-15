package io.reactivex.exceptions;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.util.ExceptionHelper;

/* compiled from: Exceptions */
public final class a {
    @NonNull
    public static RuntimeException a(@NonNull Throwable th) {
        throw ExceptionHelper.a(th);
    }

    public static void b(@NonNull Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        } else if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        } else if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }
}
