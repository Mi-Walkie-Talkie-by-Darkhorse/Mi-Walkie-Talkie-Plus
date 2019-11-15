.class final Lio/reactivex/internal/operators/observable/k$a;
.super Lio/reactivex/observers/c;
.source "ObservableBufferBoundarySupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection",
        "<-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/c",
        "<TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/k$b",
            "<TT;TU;TB;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/k$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/k$b",
            "<TT;TU;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/observers/c;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/k$a;->a:Lio/reactivex/internal/operators/observable/k$b;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$a;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$a;->b:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$a;->a:Lio/reactivex/internal/operators/observable/k$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/k$b;->g()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$a;->b:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$a;->a:Lio/reactivex/internal/operators/observable/k$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/k$b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$a;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$a;->b:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/k$a;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$a;->a:Lio/reactivex/internal/operators/observable/k$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/k$b;->g()V

    goto :goto_0
.end method
