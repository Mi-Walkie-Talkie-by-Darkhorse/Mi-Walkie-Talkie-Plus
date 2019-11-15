.class Lcom/amap/api/mapcore/util/a$32;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a;->setIndoorEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/api/mapcore/util/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$32;->b:Lcom/amap/api/mapcore/util/a;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/a$32;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a$32;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$32;->b:Lcom/amap/api/mapcore/util/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$32;->b:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->e(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/er;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$32;->b:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->e(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->e()Lcom/amap/api/mapcore/util/ep;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$32;->b:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->e(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->e()Lcom/amap/api/mapcore/util/ep;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ep;->a(Z)V

    goto :goto_0
.end method
