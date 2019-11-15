.class final Lio/reactivex/internal/operators/observable/ap$a;
.super Ljava/lang/Object;
.source "ObservableGenerate.java"

# interfaces
.implements Lio/reactivex/d;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/d",
        "<TT;>;",
        "Lio/reactivex/disposables/b;"
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

.field final b:Lio/reactivex/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/c",
            "<TS;-",
            "Lio/reactivex/d",
            "<TT;>;TS;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/f",
            "<-TS;>;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field volatile e:Z

.field f:Z

.field g:Z


# direct methods
.method constructor <init>(Lio/reactivex/q;Lio/reactivex/b/c;Lio/reactivex/b/f;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;",
            "Lio/reactivex/b/c",
            "<TS;-",
            "Lio/reactivex/d",
            "<TT;>;TS;>;",
            "Lio/reactivex/b/f",
            "<-TS;>;TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ap$a;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ap$a;->b:Lio/reactivex/b/c;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ap$a;->c:Lio/reactivex/b/f;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ap$a;->d:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->c:Lio/reactivex/b/f;

    invoke-interface {v0, p1}, Lio/reactivex/b/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->f:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onNext already called in this generate turn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ap$a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ap$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->g:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->f:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->d:Ljava/lang/Object;

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ap$a;->e:Z

    if-eqz v1, :cond_0

    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ap$a;->d:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/ap$a;->b(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ap$a;->b:Lio/reactivex/b/c;

    :cond_1
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ap$a;->e:Z

    if-eqz v2, :cond_2

    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ap$a;->d:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/ap$a;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/ap$a;->g:Z

    :try_start_0
    invoke-interface {v1, v0, p0}, Lio/reactivex/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ap$a;->f:Z

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lio/reactivex/internal/operators/observable/ap$a;->e:Z

    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ap$a;->d:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/ap$a;->b(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ap$a;->d:Ljava/lang/Object;

    iput-boolean v4, p0, Lio/reactivex/internal/operators/observable/ap$a;->e:Z

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ap$a;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/ap$a;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->e:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ap$a;->e:Z

    return v0
.end method
