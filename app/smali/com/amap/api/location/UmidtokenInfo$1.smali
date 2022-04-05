.class final Lcom/amap/api/location/UmidtokenInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/location/UmidtokenInfo;->setUmidtoken(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->a()Lcom/amap/api/location/AMapLocationClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->a()Lcom/amap/api/location/AMapLocationClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "UmidListener"

    const-string v2, "postDelayed"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
