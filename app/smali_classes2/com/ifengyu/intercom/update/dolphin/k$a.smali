.class Lcom/ifengyu/intercom/update/dolphin/k$a;
.super Ljava/lang/Thread;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/update/dolphin/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/update/dolphin/k;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/update/dolphin/k;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k$a;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/update/dolphin/k;Lcom/ifengyu/intercom/update/dolphin/k$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/k$a;-><init>(Lcom/ifengyu/intercom/update/dolphin/k;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k$a;->b:Z

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ifengyu/intercom/update/dolphin/k$a;->b:Z

    :goto_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k$a;->b:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k$a;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/k;->a(Lcom/ifengyu/intercom/update/dolphin/k;)Lcom/ifengyu/intercom/update/dolphin/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k$a;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/k;->a(Lcom/ifengyu/intercom/update/dolphin/k;)Lcom/ifengyu/intercom/update/dolphin/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->a()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k$a;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/k;->a(Lcom/ifengyu/intercom/update/dolphin/k;)Lcom/ifengyu/intercom/update/dolphin/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k$a;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/k;->a(Lcom/ifengyu/intercom/update/dolphin/k;)Lcom/ifengyu/intercom/update/dolphin/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->i()Z

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k$a;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Lcom/ifengyu/intercom/update/dolphin/k;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "UpdateHelper"

    const-string v1, "SendDataThread interrupted."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k$a;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/update/dolphin/k;->a(Lcom/ifengyu/intercom/update/dolphin/k;Z)V

    :cond_4
    return-void
.end method
