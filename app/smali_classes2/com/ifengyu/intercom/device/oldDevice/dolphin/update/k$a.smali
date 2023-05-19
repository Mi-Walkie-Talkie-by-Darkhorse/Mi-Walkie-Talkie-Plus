.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k$a;
.super Landroid/os/Handler;
.source "DolphinUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k$a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k$a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->a(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/httpold/download/OnDownloadListener;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/ifengyu/intercom/httpold/download/OnDownloadListener;->j()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k$a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->a(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/httpold/download/OnDownloadListener;

    if-eqz v0, :cond_3

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k$a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mcu_bin.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k$a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->c(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "md5"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/httpold/download/OnDownloadListener;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method
