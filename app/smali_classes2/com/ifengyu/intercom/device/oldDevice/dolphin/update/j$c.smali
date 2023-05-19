.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;
.super Ljava/lang/Thread;
.source "DolphinUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private volatile a:Z

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;->a:Z

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;->a:Z

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;->a:Z

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->d(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->d(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->g()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    .line 4
    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->d(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->d(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->f()Z

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->e(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->f(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;Z)V

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "UpdateHelper"

    const-string v2, "SendDataThread interrupted."

    .line 9
    invoke-static {v1, v2}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
