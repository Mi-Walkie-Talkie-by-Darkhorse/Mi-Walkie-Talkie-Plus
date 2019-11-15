.class final Lio/reactivex/internal/operators/observable/y$a;
.super Lio/reactivex/internal/observers/a;
.source "ObservableDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/a",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final f:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;TK;>;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/d",
            "<-TK;-TK;>;"
        }
    .end annotation
.end field

.field h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field i:Z


# direct methods
.method constructor <init>(Lio/reactivex/q;Lio/reactivex/b/g;Lio/reactivex/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;",
            "Lio/reactivex/b/g",
            "<-TT;TK;>;",
            "Lio/reactivex/b/d",
            "<-TK;-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/a;-><init>(Lio/reactivex/q;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/y$a;->f:Lio/reactivex/b/g;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/y$a;->g:Lio/reactivex/b/d;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/y$a;->b(I)I

    move-result v0

    return v0
.end method

.method public e_()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/y$a;->c:Lio/reactivex/internal/a/b;

    invoke-interface {v0}, Lio/reactivex/internal/a/b;->e_()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/y$a;->f:Lio/reactivex/b/g;

    invoke-interface {v1, v0}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/y$a;->i:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/y$a;->i:Z

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/y$a;->h:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/y$a;->g:Lio/reactivex/b/d;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/y$a;->h:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lio/reactivex/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/y$a;->h:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/y$a;->h:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/y$a;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/observable/y$a;->e:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/y$a;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/y$a;->f:Lio/reactivex/b/g;

    invoke-interface {v0, p1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/y$a;->i:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/y$a;->g:Lio/reactivex/b/d;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/y$a;->h:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lio/reactivex/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/y$a;->h:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/y$a;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/y$a;->i:Z

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/y$a;->h:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/y$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
