.class final Lio/reactivex/internal/operators/observable/d$a;
.super Ljava/lang/Object;
.source "BlockingObservableNext.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/d;
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
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/internal/operators/observable/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/d$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Throwable;

.field private g:Z


# direct methods
.method constructor <init>(Lio/reactivex/o;Lio/reactivex/internal/operators/observable/d$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Lio/reactivex/internal/operators/observable/d$b",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/d$a;->d:Z

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/d$a;->e:Z

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/d$a;->b:Lio/reactivex/o;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/d$a;->a:Lio/reactivex/internal/operators/observable/d$b;

    return-void
.end method

.method private a()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/d$a;->g:Z

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/d$a;->g:Z

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/d$a;->a:Lio/reactivex/internal/operators/observable/d$b;

    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/d$b;->b()V

    new-instance v2, Lio/reactivex/internal/operators/observable/ba;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/d$a;->b:Lio/reactivex/o;

    invoke-direct {v2, v3}, Lio/reactivex/internal/operators/observable/ba;-><init>(Lio/reactivex/o;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/d$a;->a:Lio/reactivex/internal/operators/observable/d$b;

    invoke-virtual {v2, v3}, Lio/reactivex/internal/operators/observable/ba;->subscribe(Lio/reactivex/q;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/d$a;->a:Lio/reactivex/internal/operators/observable/d$b;

    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/d$b;->a()Lio/reactivex/j;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/j;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/d$a;->e:Z

    invoke-virtual {v2}, Lio/reactivex/j;->d()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/d$a;->c:Ljava/lang/Object;

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/d$a;->a:Lio/reactivex/internal/operators/observable/d$b;

    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/d$b;->dispose()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/d$a;->f:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/d$a;->d:Z

    invoke-virtual {v2}, Lio/reactivex/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lio/reactivex/j;->e()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/d$a;->f:Ljava/lang/Throwable;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d$a;->f:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/d$a;->f:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d$a;->f:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/d$a;->d:Z

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/d$a;->e:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lio/reactivex/internal/operators/observable/d$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d$a;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d$a;->f:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/d$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/d$a;->e:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d$a;->c:Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
