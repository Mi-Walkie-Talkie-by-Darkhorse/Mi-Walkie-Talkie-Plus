.class public Lcom/qmuiteam/qmui/widget/tab/a;
.super Lcom/qmuiteam/qmui/widget/d;
.source "QMUITabAdapter.java"

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

    .line 1
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/d;-><init>(Landroid/view/ViewGroup;)V

    .line 2
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/a;->e:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/widget/tab/QMUITabView;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/qmuiteam/qmui/widget/tab/QMUITabView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/d;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/a;->e:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->A(I)V

    return-void
.end method

.method public c(Lcom/qmuiteam/qmui/widget/tab/QMUITabView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/d;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/a;->e:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->B(I)V

    return-void
.end method

.method protected bridge synthetic e(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    check-cast p2, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/tab/a;->n(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;I)V

    return-void
.end method

.method protected bridge synthetic g(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/a;->o(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    move-result-object p1

    return-object p1
.end method

.method protected final n(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/tab/a;->p(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;I)V

    .line 2
    invoke-virtual {p2, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setCallback(Lcom/qmuiteam/qmui/widget/tab/QMUITabView$b;)V

    return-void
.end method

.method protected o(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/tab/QMUITabView;
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected p(Lcom/qmuiteam/qmui/widget/tab/QMUITab;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;I)V
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->c(Lcom/qmuiteam/qmui/widget/tab/QMUITab;)V

    return-void
.end method
