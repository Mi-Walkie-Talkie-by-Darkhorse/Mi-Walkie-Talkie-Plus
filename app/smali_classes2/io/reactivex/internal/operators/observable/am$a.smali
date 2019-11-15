.class final Lio/reactivex/internal/operators/observable/am$a;
.super Lio/reactivex/internal/observers/b;
.source "ObservableFromIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field volatile c:Z

.field d:Z

.field e:Z

.field f:Z


# direct methods
.method constructor <init>(Lio/reactivex/q;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/internal/observers/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/am$a;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/am$a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/am$a;->d:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/am$a;->e:Z

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/am$a;->e:Z

    return-void
.end method

.method d()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/am$a;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/am$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The iterator returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/am$a;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/am$a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/am$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/am$a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/am$a;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/am$a;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/am$a;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/am$a;->c:Z

    return-void
.end method

.method public e_()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/am$a;->e:Z

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/am$a;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/am$a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/am$a;->e:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/am$a;->f:Z

    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/am$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The iterator returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/am$a;->c:Z

    return v0
.end method
