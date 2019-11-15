.class Lcom/amap/api/mapcore/util/a$39;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a;->onIndoorBuildingActivity(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$39;->a:Lcom/amap/api/mapcore/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$39;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->u(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$39;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->u(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a$39;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/a;->v(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a$b;->a(Lcom/amap/api/mapcore/util/ad;)V

    :cond_0
    return-void
.end method
