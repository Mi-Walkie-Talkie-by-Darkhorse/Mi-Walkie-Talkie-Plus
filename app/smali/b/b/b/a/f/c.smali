.class public final Lb/b/b/a/f/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lb/b/b/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lb/b/b/a/b<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lb/b/b/a/c;

    invoke-direct {v0}, Lb/b/b/a/c;-><init>()V

    :try_start_0
    new-instance v1, Lb/b/b/a/f/c$a;

    invoke-direct {v1, p0, v0, p2}, Lb/b/b/a/f/c$a;-><init>(Lb/b/b/a/f/c;Lb/b/b/a/c;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {v0, p1}, Lb/b/b/a/c;->b(Ljava/lang/Exception;)V

    :goto_0
    invoke-virtual {v0}, Lb/b/b/a/c;->a()Lb/b/b/a/b;

    move-result-object p1

    return-object p1
.end method
