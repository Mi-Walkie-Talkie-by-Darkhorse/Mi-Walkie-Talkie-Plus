.class final Lio/reactivex/internal/operators/observable/bn$a;
.super Ljava/lang/Object;
.source "ObservableSkipUntil.java"

# interfaces
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/q",
        "<TU;>;"
    }
.end annotation


# instance fields
.field a:Lio/reactivex/disposables/b;

.field final synthetic b:Lio/reactivex/internal/operators/observable/bn;

.field private final c:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field private final d:Lio/reactivex/internal/operators/observable/bn$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/bn$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lio/reactivex/observers/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observers/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/bn;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;Lio/reactivex/internal/operators/observable/bn$b;Lio/reactivex/observers/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/disposables/ArrayCompositeDisposable;",
            "Lio/reactivex/internal/operators/observable/bn$b",
            "<TT;>;",
            "Lio/reactivex/observers/e",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/bn$a;->b:Lio/reactivex/internal/operators/observable/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/bn$a;->c:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/bn$a;->d:Lio/reactivex/internal/operators/observable/bn$b;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/bn$a;->e:Lio/reactivex/observers/e;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bn$a;->d:Lio/reactivex/internal/operators/observable/bn$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/observable/bn$b;->d:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bn$a;->c:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bn$a;->e:Lio/reactivex/observers/e;

    invoke-virtual {v0, p1}, Lio/reactivex/observers/e;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bn$a;->a:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bn$a;->d:Lio/reactivex/internal/operators/observable/bn$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/observable/bn$b;->d:Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bn$a;->a:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/bn$a;->a:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bn$a;->c:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->a(ILio/reactivex/disposables/b;)Z

    :cond_0
    return-void
.end method
