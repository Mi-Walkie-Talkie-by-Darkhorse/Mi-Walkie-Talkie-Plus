.class public Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundRelativeLayout;
.super Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundRelativeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUIButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundRelativeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundRelativeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/qmuiteam/qmui/widget/roundwidget/a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/l;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
