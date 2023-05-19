.class public Lb/b/b/a/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lb/b/b/a/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/b/a/f/c;

    invoke-direct {v0}, Lb/b/b/a/f/c;-><init>()V

    sput-object v0, Lb/b/b/a/e;->a:Lb/b/b/a/f/c;

    return-void
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lb/b/b/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lb/b/b/a/b<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lb/b/b/a/e;->a:Lb/b/b/a/f/c;

    invoke-static {}, Lb/b/b/a/d;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lb/b/b/a/f/c;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lb/b/b/a/b;

    move-result-object p0

    return-object p0
.end method
