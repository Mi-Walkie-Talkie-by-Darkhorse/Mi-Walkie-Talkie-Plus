.class final Lio/reactivex/internal/operators/observable/ObservableTimeout$b;
.super Lio/reactivex/observers/c;
.source "ObservableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/c",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/ObservableTimeout$a;

.field final b:J

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableTimeout$a;J)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/observers/c;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->a:Lio/reactivex/internal/operators/observable/ObservableTimeout$a;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->b:J

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->c:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->a:Lio/reactivex/internal/operators/observable/ObservableTimeout$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->b:J

    invoke-interface {v0, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableTimeout$a;->a(J)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->c:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->a:Lio/reactivex/internal/operators/observable/ObservableTimeout$a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableTimeout$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->c:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->a:Lio/reactivex/internal/operators/observable/ObservableTimeout$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;->b:J

    invoke-interface {v0, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableTimeout$a;->a(J)V

    goto :goto_0
.end method
