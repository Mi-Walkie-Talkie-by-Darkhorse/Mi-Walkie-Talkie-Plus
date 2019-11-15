.class Lcom/ifengyu/intercom/ui/widget/dialog/l;
.super Landroid/view/animation/Animation;
.source "HeightAnimation.java"


# instance fields
.field protected final a:I

.field protected final b:Landroid/view/View;

.field protected c:F


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/l;->b:Landroid/view/View;

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/l;->a:I

    sub-int v0, p3, p2

    int-to-float v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/l;->c:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/l;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/l;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/l;->c:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/l;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
