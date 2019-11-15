.class Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;
.super Ljava/lang/Thread;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->b:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->b:Z

    :goto_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/update/sealshark/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/update/sealshark/e;->e(I)Z

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "UpdateHelper"

    const-string v1, "SendDataThread interrupted."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
