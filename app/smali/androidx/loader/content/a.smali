.class public abstract Landroidx/loader/content/a;
.super Landroidx/loader/content/c;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/c<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final j:Ljava/util/concurrent/Executor;

.field volatile k:Landroidx/loader/content/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field volatile l:Landroidx/loader/content/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field m:J

.field n:J

.field o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->h:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroidx/loader/content/a;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Landroidx/loader/content/c;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    .line 3
    iput-wide v0, p0, Landroidx/loader/content/a;->n:J

    .line 4
    iput-object p2, p0, Landroidx/loader/content/a;->j:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method a(Landroidx/loader/content/a$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Landroidx/loader/content/a;->c(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Landroidx/loader/content/a;->l:Landroidx/loader/content/a$a;

    if-ne p2, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/loader/content/c;->r()V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/loader/content/a;->n:J

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/loader/content/a;->l:Landroidx/loader/content/a$a;

    .line 6
    invoke-virtual {p0}, Landroidx/loader/content/c;->d()V

    .line 7
    invoke-virtual {p0}, Landroidx/loader/content/a;->w()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/loader/content/c;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    const-string p4, " waiting="

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    iget-boolean p2, p2, Landroidx/loader/content/a$a;->k:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 12
    :cond_0
    iget-object p2, p0, Landroidx/loader/content/a;->l:Landroidx/loader/content/a$a;

    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/a;->l:Landroidx/loader/content/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/a;->l:Landroidx/loader/content/a$a;

    iget-boolean p2, p2, Landroidx/loader/content/a$a;->k:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 15
    :cond_1
    iget-wide v0, p0, Landroidx/loader/content/a;->m:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    .line 16
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    iget-wide p1, p0, Landroidx/loader/content/a;->m:J

    invoke-static {p1, p2, p3}, Landroidx/core/d/i;->a(JLjava/io/PrintWriter;)V

    const-string p1, " mLastLoadCompleteTime="

    .line 18
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-wide p1, p0, Landroidx/loader/content/a;->n:J

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 21
    invoke-static {p1, p2, v0, v1, p3}, Landroidx/core/d/i;->a(JJLjava/io/PrintWriter;)V

    .line 22
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method b(Landroidx/loader/content/a$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/loader/content/a;->a(Landroidx/loader/content/a$a;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/c;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Landroidx/loader/content/a;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/loader/content/c;->c()V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/loader/content/a;->n:J

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    .line 8
    invoke-virtual {p0, p2}, Landroidx/loader/content/c;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method protected k()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    iget-boolean v0, p0, Landroidx/loader/content/c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/loader/content/c;->h:Z

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/a;->l:Landroidx/loader/content/a$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    iget-boolean v0, v0, Landroidx/loader/content/a$a;->k:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    iput-boolean v1, v0, Landroidx/loader/content/a$a;->k:Z

    .line 7
    iget-object v0, p0, Landroidx/loader/content/a;->o:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    :cond_1
    iput-object v2, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    return v1

    .line 9
    :cond_2
    iget-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    iget-boolean v0, v0, Landroidx/loader/content/a$a;->k:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    iput-boolean v1, v0, Landroidx/loader/content/a$a;->k:Z

    .line 11
    iget-object v0, p0, Landroidx/loader/content/a;->o:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iput-object v2, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    return v1

    .line 13
    :cond_3
    iget-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    invoke-virtual {v0, v1}, Landroidx/loader/content/ModernAsyncTask;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v1, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    iput-object v1, p0, Landroidx/loader/content/a;->l:Landroidx/loader/content/a$a;

    .line 15
    invoke-virtual {p0}, Landroidx/loader/content/a;->v()V

    .line 16
    :cond_4
    iput-object v2, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    return v0

    :cond_5
    return v1
.end method

.method protected m()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/loader/content/c;->m()V

    .line 2
    invoke-virtual {p0}, Landroidx/loader/content/c;->b()Z

    .line 3
    new-instance v0, Landroidx/loader/content/a$a;

    invoke-direct {v0, p0}, Landroidx/loader/content/a$a;-><init>(Landroidx/loader/content/a;)V

    iput-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    .line 4
    invoke-virtual {p0}, Landroidx/loader/content/a;->w()V

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method w()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/loader/content/a;->l:Landroidx/loader/content/a$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    iget-boolean v0, v0, Landroidx/loader/content/a$a;->k:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/loader/content/a$a;->k:Z

    .line 4
    iget-object v0, p0, Landroidx/loader/content/a;->o:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-wide v0, p0, Landroidx/loader/content/a;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 7
    iget-wide v2, p0, Landroidx/loader/content/a;->n:J

    iget-wide v4, p0, Landroidx/loader/content/a;->m:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/loader/content/a$a;->k:Z

    .line 9
    iget-object v0, p0, Landroidx/loader/content/a;->o:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    iget-wide v2, p0, Landroidx/loader/content/a;->n:J

    iget-wide v4, p0, Landroidx/loader/content/a;->m:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/loader/content/a;->k:Landroidx/loader/content/a$a;

    iget-object v1, p0, Landroidx/loader/content/a;->j:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/loader/content/ModernAsyncTask;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;

    :cond_2
    return-void
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/loader/content/a;->l:Landroidx/loader/content/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract y()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected z()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/loader/content/a;->y()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
