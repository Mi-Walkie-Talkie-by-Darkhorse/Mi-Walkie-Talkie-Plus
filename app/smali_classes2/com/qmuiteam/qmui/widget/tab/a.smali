.class public Lcom/qmuiteam/qmui/widget/tab/a;
.super Lcom/qmuiteam/qmui/widget/d;

# interfaces
.implements Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qmuiteam/qmui/widget/d<",
        "Lcom/qmuiteam/qmui/widget/tab/QMUITab;",
        "Lcom/qmuiteam/qmui/widget/tab/QMUITabView;",
        ">;",
        "Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;"
    }
.end annotation


# instance fields
.field private e:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/a;->e:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/a;->a(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/tab/QMUITabView;
    .locals 1

    new-instance v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected final a(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/tab/a;->b(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;I)V

    invoke-virtual {p2, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setCallback(Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;)V

    return-void
.end method

.method public a(Lcom/qmuiteam/qmui/widget/tab/QMUITabView;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    check-cast p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    check-cast p2, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/tab/a;->a(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;I)V

    return-void
.end method

.method protected b(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;I)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->a(Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V

    return-void
.end method

.method public b(Lcom/qmuiteam/qmui/widget/tab/QMUITabView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/d;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/a;->e:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a(I)V

    return-void
.end method

.method public c(Lcom/qmuiteam/qmui/widget/tab/QMUITabView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/d;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/a;->e:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->f(I)V

    return-void
.end method
