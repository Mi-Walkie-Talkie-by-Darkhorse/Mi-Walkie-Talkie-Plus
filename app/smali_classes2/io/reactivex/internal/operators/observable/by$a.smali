.class final Lio/reactivex/internal/operators/observable/by$a;
.super Lio/reactivex/observers/c;
.source "ObservableWindowBoundarySelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/by;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/c",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/by$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/by$c",
            "<TT;*TV;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/subjects/UnicastSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/by$c;Lio/reactivex/subjects/UnicastSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/by$c",
            "<TT;*TV;>;",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/observers/c;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/by$a;->a:Lio/reactivex/internal/operators/observable/by$c;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/by$a;->b:Lio/reactivex/subjects/UnicastSubject;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$a;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$a;->c:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$a;->a:Lio/reactivex/internal/operators/observable/by$c;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/by$c;->a(Lio/reactivex/internal/operators/observable/by$a;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$a;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$a;->c:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$a;->a:Lio/reactivex/internal/operators/observable/by$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/by$c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$a;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$a;->c:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$a;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$a;->a:Lio/reactivex/internal/operators/observable/by$c;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/by$c;->a(Lio/reactivex/internal/operators/observable/by$a;)V

    goto :goto_0
.end method
