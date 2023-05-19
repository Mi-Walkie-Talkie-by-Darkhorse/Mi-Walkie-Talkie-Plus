.class final Lcom/amap/api/col/l3/je$a;
.super Landroid/content/BroadcastReceiver;
.source "Aps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/je;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/je;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/je$a;->a:Lcom/amap/api/col/l3/je;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const-string p2, "android.net.wifi.SCAN_RESULTS"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/je$a;->a:Lcom/amap/api/col/l3/je;

    iget-object p1, p1, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/col/l3/jn;->e()V

    return-void

    :cond_2
    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/amap/api/col/l3/je$a;->a:Lcom/amap/api/col/l3/je;

    iget-object p1, p1, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/col/l3/jn;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Aps"

    const-string v0, "onReceive"

    .line 9
    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
