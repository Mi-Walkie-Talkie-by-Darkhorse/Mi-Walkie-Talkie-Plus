.class public Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;
.super Lcom/jude/rollviewpager/hintview/ColorPointHintView;
.source "MyColorPointHintView.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/jude/rollviewpager/hintview/ColorPointHintView;-><init>(Landroid/content/Context;II)V

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;->a:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/high16 v3, 0x40a00000    # 5.0f

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v1, v2}, Lcom/jude/rollviewpager/c;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/jude/rollviewpager/c;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/jude/rollviewpager/c;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/high16 v3, 0x40a00000    # 5.0f

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v1, v2}, Lcom/jude/rollviewpager/c;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/jude/rollviewpager/c;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/jude/rollviewpager/c;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    return-object v0
.end method
