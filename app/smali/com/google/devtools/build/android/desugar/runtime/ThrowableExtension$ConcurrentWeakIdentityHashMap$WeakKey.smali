.class final Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;
.super Ljava/lang/ref/WeakReference;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final hash:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The referent cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;->hash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p0, p1, :cond_1

    check-cast p1, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;

    iget v2, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;->hash:I

    iget v3, p1, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;->hash:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;->hash:I

    return v0
.end method
