.class final Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservablePublish.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xf44f24fda471418L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->a:Lio/reactivex/q;

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/internal/operators/observable/ObservablePublish$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$a",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lio/reactivex/internal/operators/observable/ObservablePublish$a;->b(Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservablePublish$a;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservablePublish$a;->b(Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
