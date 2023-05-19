.class Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$b;
.super Ljava/lang/Object;
.source "QMUIContinuousNestedTopDelegateLayout.java"

# interfaces
.implements Lcom/qmuiteam/qmui/nestedScroll/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b(Lcom/qmuiteam/qmui/nestedScroll/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/nestedScroll/b$a;

.field final synthetic b:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;Lcom/qmuiteam/qmui/nestedScroll/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$b;->b:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;

    iput-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$b;->a:Lcom/qmuiteam/qmui/nestedScroll/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$b;->a:Lcom/qmuiteam/qmui/nestedScroll/b$a;

    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$b;->b:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->getCurrentScroll()I

    move-result p2

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$b;->b:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->getScrollOffsetRange()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/qmuiteam/qmui/nestedScroll/b$a;->a(II)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
