.class public Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;
.super Landroid/view/View;
.source "QMUISlider.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/QMUISlider$b;
.implements Lcom/qmuiteam/qmui/c/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUISlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultThumbView"
.end annotation


# static fields
.field private static c:La/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/qmuiteam/qmui/layout/a;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La/b/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, La/b/g;-><init>(I)V

    sput-object v0, Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;->c:La/b/g;

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_slider_thumb_bg_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;->c:La/b/g;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_slider_thumb_border_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "border"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;->b:I

    .line 3
    new-instance v1, Lcom/qmuiteam/qmui/layout/a;

    invoke-direct {v1, p1, v0, p3, p0}, Lcom/qmuiteam/qmui/layout/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;)V

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;->a:Lcom/qmuiteam/qmui/layout/a;

    .line 4
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v1, p2}, Lcom/qmuiteam/qmui/layout/a;->l(I)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;->setPress(Z)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/qmuiteam/qmui/layout/a;->a(Landroid/graphics/Canvas;II)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDefaultSkinAttrs()La/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;->c:La/b/g;

    return-object v0
.end method

.method public getLeftRightMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;->b:I

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUISlider$DefaultThumbView;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->setBorderColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPress(Z)V
    .locals 0

    return-void
.end method
