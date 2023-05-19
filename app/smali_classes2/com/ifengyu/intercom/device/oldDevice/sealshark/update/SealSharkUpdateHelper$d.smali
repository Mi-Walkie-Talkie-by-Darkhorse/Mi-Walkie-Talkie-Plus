.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;
.super Ljava/lang/Thread;
.source "SealSharkUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private volatile a:Z

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->a:Z

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->a:Z

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->a:Z

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->e(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->d(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->g(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->h(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->i(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;Z)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->e(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->d(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->h(I)Z

    .line 7
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->j(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "SealSharkUpdateHelper"

    const-string v2, "SendDataThread interrupted."

    .line 8
    invoke-static {v1, v2}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
