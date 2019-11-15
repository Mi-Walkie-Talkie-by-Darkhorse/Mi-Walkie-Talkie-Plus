.class Lcom/amap/api/mapcore/util/a$38$1;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a$38;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/a$38;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a$38;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$38$1;->a:Lcom/amap/api/mapcore/util/a$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$38$1;->a:Lcom/amap/api/mapcore/util/a$38;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a$38;->b:Lcom/amap/api/mapcore/util/a;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a$38$1;->a:Lcom/amap/api/mapcore/util/a$38;

    iget v1, v1, Lcom/amap/api/mapcore/util/a$38;->a:I

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/a;->b(Lcom/amap/api/mapcore/util/a;I)I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$38$1;->a:Lcom/amap/api/mapcore/util/a$38;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a$38;->b:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->e(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/er;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$38$1;->a:Lcom/amap/api/mapcore/util/a$38;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a$38;->b:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->e(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->h()Lcom/amap/api/mapcore/util/et;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/et;->setVisibility(I)V

    :cond_0
    return-void
.end method
