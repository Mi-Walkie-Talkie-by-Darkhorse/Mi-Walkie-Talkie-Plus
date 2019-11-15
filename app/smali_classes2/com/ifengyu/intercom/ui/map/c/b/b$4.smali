.class Lcom/ifengyu/intercom/ui/map/c/b/b$4;
.super Ljava/lang/Object;
.source "OsmClusterOverlayManager.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;ILcom/ifengyu/intercom/ui/map/d/a/f;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/ifengyu/intercom/ui/map/d/a/f;

.field final synthetic d:Lcom/ifengyu/intercom/ui/map/c/b/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/c/b/b;ZILcom/ifengyu/intercom/ui/map/d/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$4;->d:Lcom/ifengyu/intercom/ui/map/c/b/b;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$4;->a:Z

    iput p3, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$4;->b:I

    iput-object p4, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$4;->c:Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$4;->d:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->b(Lcom/ifengyu/intercom/ui/map/c/b/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0400ca

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f1002ce

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f1002cf

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$4;->a:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$4;->d:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/map/c/b/b;->b(Lcom/ifengyu/intercom/ui/map/c/b/b;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020131

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p3}, Lcom/ifengyu/intercom/b/v;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x7f090175

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$4;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$4;->c:Lcom/ifengyu/intercom/ui/map/d/a/f;

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
