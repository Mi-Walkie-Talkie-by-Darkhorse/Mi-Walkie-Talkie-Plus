.class Lcom/ifengyu/intercom/ui/map/c/b/b$2;
.super Ljava/lang/Object;
.source "OsmClusterOverlayManager.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ifengyu/intercom/ui/map/d/a/f;

.field final synthetic c:Lcom/ifengyu/intercom/ui/map/c/b/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/c/b/b;ZLcom/ifengyu/intercom/ui/map/d/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$2;->c:Lcom/ifengyu/intercom/ui/map/c/b/b;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$2;->a:Z

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$2;->b:Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$2;->c:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->b(Lcom/ifengyu/intercom/ui/map/c/b/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0400cd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f1002d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$2;->a:Z

    if-eqz v2, :cond_0

    invoke-static {p3}, Lcom/ifengyu/intercom/b/v;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$2;->b:Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/map/d/a/f;->setMarker(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
