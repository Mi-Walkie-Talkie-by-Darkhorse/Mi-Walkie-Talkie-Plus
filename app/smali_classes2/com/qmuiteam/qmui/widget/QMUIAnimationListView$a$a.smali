.class Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a$a;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a$a;->a:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a$a;->a:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;->a(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a$a;->a:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a$a;->a:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$a;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
