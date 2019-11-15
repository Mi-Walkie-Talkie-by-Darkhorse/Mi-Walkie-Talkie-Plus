.class Lcom/amap/api/mapcore/util/a$6;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/a;
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

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$6;->a:Lcom/amap/api/mapcore/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$6;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->e(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/er;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$6;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->e(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->h()Lcom/amap/api/mapcore/util/et;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/et;->d()V

    :cond_0
    return-void
.end method
