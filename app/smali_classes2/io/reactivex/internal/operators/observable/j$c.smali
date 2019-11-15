.class final Lio/reactivex/internal/operators/observable/j$c;
.super Lio/reactivex/observers/c;
.source "ObservableBufferBoundary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
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
        "<TOpen;>;"
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

.field b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/j$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/j$a",
            "<TT;TU;TOpen;TClose;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/observers/c;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/j$c;->a:Lio/reactivex/internal/operators/observable/j$a;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/j$c;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/j$c;->b:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/j$c;->a:Lio/reactivex/internal/operators/observable/j$a;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/j$a;->a(Lio/reactivex/disposables/b;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/j$c;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/j$c;->b:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/j$c;->a:Lio/reactivex/internal/operators/observable/j$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/j$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOpen;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/j$c;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/j$c;->a:Lio/reactivex/internal/operators/observable/j$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/j$a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
