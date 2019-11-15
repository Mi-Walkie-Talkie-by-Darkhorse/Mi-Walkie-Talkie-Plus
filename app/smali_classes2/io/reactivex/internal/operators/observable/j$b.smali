.class final Lio/reactivex/internal/operators/observable/j$b;
.super Lio/reactivex/observers/c;
.source "ObservableBufferBoundary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection",
        "<-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/c",
        "<TClose;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/j$a",
            "<TT;TU;TOpen;TClose;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method constructor <init>(Ljava/util/Collection;Lio/reactivex/internal/operators/observable/j$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/internal/operators/observable/j$a",
            "<TT;TU;TOpen;TClose;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/observers/c;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/j$b;->a:Lio/reactivex/internal/operators/observable/j$a;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/j$b;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/j$b;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/j$b;->c:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/j$b;->a:Lio/reactivex/internal/operators/observable/j$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/j$b;->b:Ljava/util/Collection;

    invoke-virtual {v0, v1, p0}, Lio/reactivex/internal/operators/observable/j$a;->a(Ljava/util/Collection;Lio/reactivex/disposables/b;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/j$b;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/j$b;->a:Lio/reactivex/internal/operators/observable/j$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/j$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClose;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/j$b;->onComplete()V

    return-void
.end method
