.class final Lio/reactivex/internal/operators/observable/by$b;
.super Lio/reactivex/observers/c;
.source "ObservableWindowBoundarySelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/by;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/c",
        "<TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/by$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/by$c",
            "<TT;TB;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/by$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/by$c",
            "<TT;TB;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/observers/c;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/by$b;->a:Lio/reactivex/internal/operators/observable/by$c;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$b;->a:Lio/reactivex/internal/operators/observable/by$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/by$c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$b;->a:Lio/reactivex/internal/operators/observable/by$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/by$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$b;->a:Lio/reactivex/internal/operators/observable/by$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/by$c;->a(Ljava/lang/Object;)V

    return-void
.end method
