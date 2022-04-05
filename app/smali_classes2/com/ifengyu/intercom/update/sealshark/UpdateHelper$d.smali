.class Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private volatile a:Z

.field final synthetic b:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;->b:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;->a:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;->b:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;->a:Z

    :goto_0
    iget-boolean v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;->b:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;->b:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/update/sealshark/e;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;->b:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;Z)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;->b:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;->b:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/update/sealshark/e;->d(I)Z

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;->b:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "UpdateHelper"

    const-string v2, "SendDataThread interrupted."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
