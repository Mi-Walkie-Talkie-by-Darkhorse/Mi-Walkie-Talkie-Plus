.class Lcom/ifengyu/intercom/ui/map/e/b/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;ILcom/ifengyu/intercom/ui/map/f/a/f;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/ifengyu/intercom/ui/map/f/a/f;

.field final synthetic d:Lcom/ifengyu/intercom/ui/map/e/b/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/e/b/b;ZILcom/ifengyu/intercom/ui/map/f/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$d;->d:Lcom/ifengyu/intercom/ui/map/e/b/b;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$d;->a:Z

    iput p3, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$d;->b:I

    iput-object p4, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$d;->c:Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 5

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$d;->d:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->b(Lcom/ifengyu/intercom/ui/map/e/b/b;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0c00ce

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090257

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v0, 0x7f090256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$d;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$d;->d:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->b(Lcom/ifengyu/intercom/ui/map/e/b/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p3}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f110273

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$d;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$d;->c:Lcom/ifengyu/intercom/ui/map/f/a/f;

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
