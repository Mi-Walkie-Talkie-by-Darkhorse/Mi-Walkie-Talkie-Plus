.class Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$a;
.super Ljava/lang/Object;
.source "QMUIStickySectionLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$a;->a:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$a;->a:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;

    sub-int/2addr p5, p3

    invoke-static {p1, p5}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->k(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;I)I

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$a;->a:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->h(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$a;->a:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->l(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$a;->a:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->l(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$a;->a:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->m(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
