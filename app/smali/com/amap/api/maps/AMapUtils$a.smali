.class Lcom/amap/api/maps/AMapUtils$a;
.super Ljava/lang/Thread;
.source "AMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/AMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/maps/AMapUtils$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/maps/AMapUtils$a;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/AMapUtils$a;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/maps/AMapUtils$a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/fx$a;

    iget-object v1, p0, Lcom/amap/api/maps/AMapUtils$a;->a:Ljava/lang/String;

    const-string v2, "5.7.0"

    sget-object v3, Lcom/amap/api/mapcore/util/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/fx$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.amap.api.maps"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/fx$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/fx$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fx$a;->a()Lcom/amap/api/mapcore/util/fx;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/maps/AMapUtils$a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/fq;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)Z

    invoke-virtual {p0}, Lcom/amap/api/maps/AMapUtils$a;->interrupt()V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
