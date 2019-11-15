.class Lcom/ifengyu/intercom/node/btle/f$1;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/f$1;->a:Lcom/ifengyu/intercom/node/btle/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "ConnectionThread"

    const-string v1, "sending retry broadcast"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f$1;->a:Lcom/ifengyu/intercom/node/btle/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/node/btle/f;->a(Lcom/ifengyu/intercom/node/btle/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f$1;->a:Lcom/ifengyu/intercom/node/btle/f;

    invoke-static {v1}, Lcom/ifengyu/intercom/node/btle/f;->b(Lcom/ifengyu/intercom/node/btle/f;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f$1;->a:Lcom/ifengyu/intercom/node/btle/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/node/btle/f;->a(Lcom/ifengyu/intercom/node/btle/f;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION"

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/f$1;->a:Lcom/ifengyu/intercom/node/btle/f;

    invoke-static {v4}, Lcom/ifengyu/intercom/node/btle/f;->c(Lcom/ifengyu/intercom/node/btle/f;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
