.class public abstract Lio/reactivex/observers/b;
.super Ljava/lang/Object;
.source "DefaultObserver.java"

# interfaces
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/disposables/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 0

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 2
    .param p1    # Lio/reactivex/disposables/b;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/reactivex/observers/b;->a:Lio/reactivex/disposables/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/e;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/observers/b;->a:Lio/reactivex/disposables/b;

    invoke-virtual {p0}, Lio/reactivex/observers/b;->b()V

    :cond_0
    return-void
.end method
