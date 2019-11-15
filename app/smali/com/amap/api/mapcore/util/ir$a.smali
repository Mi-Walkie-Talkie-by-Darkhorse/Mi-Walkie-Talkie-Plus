.class final Lcom/amap/api/mapcore/util/ir$a;
.super Landroid/content/BroadcastReceiver;
.source "MapNetLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ir;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/ir;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ir$a;->a:Lcom/amap/api/mapcore/util/ir;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/ir;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ir$a;-><init>(Lcom/amap/api/mapcore/util/ir;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir$a;->a:Lcom/amap/api/mapcore/util/ir;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ir;->a(Lcom/amap/api/mapcore/util/ir;)Lcom/amap/api/mapcore/util/iy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir$a;->a:Lcom/amap/api/mapcore/util/ir;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ir;->a(Lcom/amap/api/mapcore/util/ir;)Lcom/amap/api/mapcore/util/iy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/iy;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "onReceive"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir$a;->a:Lcom/amap/api/mapcore/util/ir;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ir;->a(Lcom/amap/api/mapcore/util/ir;)Lcom/amap/api/mapcore/util/iy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir$a;->a:Lcom/amap/api/mapcore/util/ir;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ir;->a(Lcom/amap/api/mapcore/util/ir;)Lcom/amap/api/mapcore/util/iy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/iy;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
