.class Lcom/amap/api/mapcore/util/a$b$2;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a$b;->a(Lcom/amap/api/mapcore/util/ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ep;

.field final synthetic b:Lcom/amap/api/mapcore/util/a$b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a$b;Lcom/amap/api/mapcore/util/ep;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$b$2;->b:Lcom/amap/api/mapcore/util/a$b;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/a$b$2;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b$2;->a:Lcom/amap/api/mapcore/util/ep;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a$b$2;->b:Lcom/amap/api/mapcore/util/a$b;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/ad;->floor_names:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ep;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b$2;->a:Lcom/amap/api/mapcore/util/ep;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a$b$2;->b:Lcom/amap/api/mapcore/util/a$b;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/ad;->activeFloorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ep;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b$2;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ep;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b$2;->a:Lcom/amap/api/mapcore/util/ep;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ep;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
