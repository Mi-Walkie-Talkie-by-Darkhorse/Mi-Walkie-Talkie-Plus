.class public Lio/reactivex/internal/observers/DeferredScalarDisposable;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "DeferredScalarDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4c5c90f80ed9d471L


# instance fields
.field protected final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->a:Lio/reactivex/q;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    and-int/lit8 v1, v0, 0x36

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iput-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->b:Ljava/lang/Object;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    goto :goto_1
.end method

.method public final b()Z
    .locals 2

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->b:Ljava/lang/Object;

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->set(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->b:Ljava/lang/Object;

    return-void
.end method

.method public final e_()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->b:Ljava/lang/Object;

    iput-object v1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->b:Ljava/lang/Object;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final isDisposed()Z
    .locals 2

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
