.class public Lcom/qmuiteam/qmui/c/j/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qmuiteam/qmui/c/j/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/c/g;Landroid/view/View;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/c/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    instance-of p1, p2, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3, p5}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/Context;Landroid/content/res/Resources$Theme;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->setBgData(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;

    if-eqz p1, :cond_1

    invoke-static {p3, p5}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    instance-of p1, p2, Lcom/qmuiteam/qmui/widget/QMUISlider;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/qmuiteam/qmui/widget/QMUISlider;

    invoke-static {p3, p5}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/qmuiteam/qmui/widget/QMUISlider;->setBarNormalColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, p5}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/qmuiteam/qmui/util/l;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
