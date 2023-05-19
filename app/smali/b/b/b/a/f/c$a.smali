.class final Lb/b/b/a/f/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/b/a/f/c;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lb/b/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/b/a/c;

.field final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lb/b/b/a/f/c;Lb/b/b/a/c;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p2, p0, Lb/b/b/a/f/c$a;->a:Lb/b/b/a/c;

    iput-object p3, p0, Lb/b/b/a/f/c$a;->b:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lb/b/b/a/f/c$a;->a:Lb/b/b/a/c;

    iget-object v1, p0, Lb/b/b/a/f/c$a;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/b/a/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lb/b/b/a/f/c$a;->a:Lb/b/b/a/c;

    invoke-virtual {v1, v0}, Lb/b/b/a/c;->b(Ljava/lang/Exception;)V

    return-void
.end method
