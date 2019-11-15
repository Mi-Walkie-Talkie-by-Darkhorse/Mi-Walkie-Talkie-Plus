.class final Lrx/e/b;
.super Lrx/d;
.source "ExecutorScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/e/b$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Lrx/d;-><init>()V

    iput-object p1, p0, Lrx/e/b;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()Lrx/d$a;
    .locals 2

    new-instance v0, Lrx/e/b$a;

    iget-object v1, p0, Lrx/e/b;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lrx/e/b$a;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
