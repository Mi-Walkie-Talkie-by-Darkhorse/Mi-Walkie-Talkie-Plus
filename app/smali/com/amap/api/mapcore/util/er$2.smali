.class Lcom/amap/api/mapcore/util/er$2;
.super Ljava/lang/Object;
.source "MapOverlayViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/er;->a_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/er;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/er;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/er$2;->a:Lcom/amap/api/mapcore/util/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$2;->a:Lcom/amap/api/mapcore/util/er;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/er;->d(Lcom/amap/api/mapcore/util/er;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$2;->a:Lcom/amap/api/mapcore/util/er;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/er;->d(Lcom/amap/api/mapcore/util/er;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$2;->a:Lcom/amap/api/mapcore/util/er;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er$2;->a:Lcom/amap/api/mapcore/util/er;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/er;->d(Lcom/amap/api/mapcore/util/er;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/er;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$2;->a:Lcom/amap/api/mapcore/util/er;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/er;->d(Lcom/amap/api/mapcore/util/er;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$2;->a:Lcom/amap/api/mapcore/util/er;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/er;->e(Lcom/amap/api/mapcore/util/er;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$2;->a:Lcom/amap/api/mapcore/util/er;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/er;->a(Lcom/amap/api/mapcore/util/er;Landroid/view/View;)Landroid/view/View;

    :cond_0
    return-void
.end method
