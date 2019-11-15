.class final Lio/reactivex/internal/operators/observable/ca$b;
.super Lio/reactivex/internal/observers/k;
.source "ObservableWindowTimed.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/k",
        "<TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/k",
        "<TT;>;>;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final n:Ljava/lang/Object;


# instance fields
.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;

.field final i:Lio/reactivex/r;

.field final j:I

.field k:Lio/reactivex/disposables/b;

.field l:Lio/reactivex/subjects/UnicastSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation
.end field

.field final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field volatile o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/ca$b;->n:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/q;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lio/reactivex/k",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/k;-><init>(Lio/reactivex/q;Lio/reactivex/internal/a/f;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ca$b;->g:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ca$b;->h:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ca$b;->i:Lio/reactivex/r;

    iput p6, p0, Lio/reactivex/internal/operators/observable/ca$b;->j:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->c:Z

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method g()V
    .locals 7

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->b:Lio/reactivex/internal/a/f;

    check-cast v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ca$b;->a:Lio/reactivex/q;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ca$b;->l:Lio/reactivex/subjects/UnicastSubject;

    const/4 v1, 0x1

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ca$b;->o:Z

    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ca$b;->d:Z

    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->e_()Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_3

    if-eqz v6, :cond_1

    sget-object v5, Lio/reactivex/internal/operators/observable/ca$b;->n:Ljava/lang/Object;

    if-ne v6, v5, :cond_3

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ca$b;->l:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->f()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v2}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ca$b;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_4
    sget-object v5, Lio/reactivex/internal/operators/observable/ca$b;->n:Ljava/lang/Object;

    if-ne v6, v5, :cond_6

    invoke-virtual {v2}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    if-nez v4, :cond_5

    iget v2, p0, Lio/reactivex/internal/operators/observable/ca$b;->j:I

    invoke-static {v2}, Lio/reactivex/subjects/UnicastSubject;->a(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v2

    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ca$b;->l:Lio/reactivex/subjects/UnicastSubject;

    invoke-interface {v3, v2}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ca$b;->k:Lio/reactivex/disposables/b;

    invoke-interface {v4}, Lio/reactivex/disposables/b;->dispose()V

    goto :goto_0

    :cond_6
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->c:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->g()V

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->f()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ca$b;->e:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->g()V

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->f()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->l:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ca$b;->a(I)I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->g()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->b:Lio/reactivex/internal/a/f;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->c()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 7

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->k:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ca$b;->k:Lio/reactivex/disposables/b;

    iget v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->j:I

    invoke-static {v0}, Lio/reactivex/subjects/UnicastSubject;->a(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->l:Lio/reactivex/subjects/UnicastSubject;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$b;->l:Lio/reactivex/subjects/UnicastSubject;

    invoke-interface {v0, v1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->i:Lio/reactivex/r;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$b;->g:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ca$b;->g:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ca$b;->h:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/r;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$b;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->o:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->f()V

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$b;->b:Lio/reactivex/internal/a/f;

    sget-object v1, Lio/reactivex/internal/operators/observable/ca$b;->n:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$b;->g()V

    :cond_1
    return-void
.end method
