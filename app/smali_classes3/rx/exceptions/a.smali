.class public final Lrx/exceptions/a;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v0, :cond_0

    check-cast p0, Lrx/exceptions/OnErrorNotImplementedException;

    throw p0

    :cond_0
    instance-of v0, p0, Lrx/exceptions/OnErrorFailedException;

    if-eqz v0, :cond_1

    check-cast p0, Lrx/exceptions/OnErrorFailedException;

    throw p0

    :cond_1
    instance-of v0, p0, Ljava/lang/StackOverflowError;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/StackOverflowError;

    throw p0

    :cond_2
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0

    :cond_3
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0

    :cond_4
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/LinkageError;

    throw p0

    :cond_5
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lrx/exceptions/CompositeException;

    const-string v1, "Multiple exceptions"

    invoke-direct {v0, v1, p0}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v0

    :cond_3
    return-void
.end method
