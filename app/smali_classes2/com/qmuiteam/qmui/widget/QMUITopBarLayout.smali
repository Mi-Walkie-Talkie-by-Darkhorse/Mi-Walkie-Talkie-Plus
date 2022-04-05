.class public Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
.super Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

# interfaces
.implements Lcom/qmuiteam/qmui/c/i/a;


# instance fields
.field private c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

.field private d:La/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUITopBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, La/b/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, La/b/g;-><init>(I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->d:La/b/g;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_topbar_separator_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bottomSeparator"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->d:La/b/g;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_topbar_bg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-direct {v0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUITopBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->a(IIII)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->getTopBarHeight()I

    move-result p2

    const/4 p3, -0x1

    invoke-direct {p1, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(II)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->b(II)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    move-result-object p1

    return-object p1
.end method

.method public b(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->c(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    return-object p1
.end method

.method public c(II)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->d(II)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->a(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->d:La/b/g;

    return-object v0
.end method

.method public getTopBar()Lcom/qmuiteam/qmui/widget/QMUITopBar;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    return-object v0
.end method

.method public setBackgroundAlpha(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->setCenterView(Landroid/view/View;)V

    return-void
.end method

.method public setDefaultSkinAttr(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->d:La/b/g;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTitleGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->setTitleGravity(I)V

    return-void
.end method
