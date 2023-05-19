.class Lcom/shanlitech/et/core/c/r$a;
.super Ljava/lang/Object;
.source "PocSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/core/c/r;->d()Lcom/shanlitech/et/core/c/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/shanlitech/et/core/c/r;


# direct methods
.method constructor <init>(Lcom/shanlitech/et/core/c/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/core/c/r$a;->a:Lcom/shanlitech/et/core/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/core/c/r$a;->a:Lcom/shanlitech/et/core/c/r;

    invoke-static {}, Lcom/shanlitech/et/core/c/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/core/c/r;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/core/c/r$a;->a:Lcom/shanlitech/et/core/c/r;

    invoke-static {v0}, Lcom/shanlitech/et/core/c/r;->c(Lcom/shanlitech/et/core/c/r;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/shanlitech/et/core/c/r$a;->a:Lcom/shanlitech/et/core/c/r;

    invoke-static {v2}, Lcom/shanlitech/et/core/c/r;->b(Lcom/shanlitech/et/core/c/r;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
