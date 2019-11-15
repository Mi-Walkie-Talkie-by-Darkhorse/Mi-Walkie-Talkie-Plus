.class final Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;
.super Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MimicDesugaringStrategy"
.end annotation


# static fields
.field static final SUPPRESSED_PREFIX:Ljava/lang/String; = "Suppressed: "


# instance fields
.field private final map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;-><init>()V

    new-instance v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    invoke-direct {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    return-void
.end method


# virtual methods
.method public addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-ne p2, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self suppression is not allowed."

    invoke-direct {v0, v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The suppressed exception cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSuppressed(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .locals 2

    iget-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public printStackTrace(Ljava/lang/Throwable;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Suppressed: "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "Suppressed: "

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "Suppressed: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
