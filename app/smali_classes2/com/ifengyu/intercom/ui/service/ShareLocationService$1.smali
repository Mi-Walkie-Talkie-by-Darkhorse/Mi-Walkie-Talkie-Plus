.class Lcom/ifengyu/intercom/ui/service/ShareLocationService$1;
.super Ljava/lang/Object;
.source "ShareLocationService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/service/ShareLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$1;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$1;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    check-cast p2, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Lcom/ifengyu/intercom/ui/service/ShareLocationService;Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$1;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$1;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->b()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->k(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$1;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->c(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$1;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$1;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->c(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$1;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$1;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->c(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$1;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
