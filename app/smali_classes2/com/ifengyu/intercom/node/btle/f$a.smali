.class Lcom/ifengyu/intercom/node/btle/f$a;
.super Ljava/lang/Object;
.source "ConnectionThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/node/btle/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/node/btle/f;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/node/btle/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/f$a;->a:Lcom/ifengyu/intercom/node/btle/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ConnectionThread"

    const-string v1, "sending retry broadcast"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f$a;->a:Lcom/ifengyu/intercom/node/btle/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/node/btle/f;->a(Lcom/ifengyu/intercom/node/btle/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f$a;->a:Lcom/ifengyu/intercom/node/btle/f;

    invoke-static {v1}, Lcom/ifengyu/intercom/node/btle/f;->b(Lcom/ifengyu/intercom/node/btle/f;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f$a;->a:Lcom/ifengyu/intercom/node/btle/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/node/btle/f;->a(Lcom/ifengyu/intercom/node/btle/f;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 5
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/f$a;->a:Lcom/ifengyu/intercom/node/btle/f;

    invoke-static {v3}, Lcom/ifengyu/intercom/node/btle/f;->c(Lcom/ifengyu/intercom/node/btle/f;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
