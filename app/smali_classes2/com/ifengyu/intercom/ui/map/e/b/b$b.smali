.class Lcom/ifengyu/intercom/ui/map/e/b/b$b;
.super Ljava/lang/Object;
.source "OsmClusterOverlayManager.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ifengyu/intercom/ui/map/f/a/f;

.field final synthetic c:Lcom/ifengyu/intercom/ui/map/e/b/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/e/b/b;ZLcom/ifengyu/intercom/ui/map/f/a/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$b;->c:Lcom/ifengyu/intercom/ui/map/e/b/b;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$b;->a:Z

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$b;->b:Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$b;->c:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->b(Lcom/ifengyu/intercom/ui/map/e/b/b;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0c00d1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090266

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 3
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$b;->a:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p3}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$b;->b:Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-virtual {p2, p1}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

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
