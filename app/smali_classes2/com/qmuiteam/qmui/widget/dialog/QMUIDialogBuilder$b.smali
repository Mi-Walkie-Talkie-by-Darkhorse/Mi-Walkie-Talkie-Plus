.class Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

.field final synthetic b:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;Lcom/qmuiteam/qmui/layout/QMUILinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$b;->b:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$b;->a:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$b;->a:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$b;->a:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p3

    if-le p3, p4, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$b;->b:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;)Landroid/content/Context;

    move-result-object p3

    const/4 p4, 0x3

    invoke-static {p3, p4}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p3

    sub-int/2addr p2, p3

    const/4 p3, 0x0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_0

    iget-object p5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$b;->a:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {p5, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p2, p3, p2, p3}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
