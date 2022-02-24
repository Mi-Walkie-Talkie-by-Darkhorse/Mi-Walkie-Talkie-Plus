.class final Lcom/umeng/commonsdk/UMConfigureImpl$1;
.super Ljava/lang/Object;
.source "UMConfigureImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/UMConfigureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->a()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->b()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 2
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigureImpl;->a(Z)Z

    .line 4
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigureImpl;->a(Landroid/content/Context;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->e()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->e()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigureImpl;->a(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->f()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
