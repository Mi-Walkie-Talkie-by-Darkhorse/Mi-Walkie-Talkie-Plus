.class Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$3;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "BaseQuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/GridLayoutManager;

.field final synthetic b:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$3;->b:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;

    iput-object p2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$3;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 6

    const/16 v5, 0x1004

    const/16 v4, 0x1003

    const/16 v3, 0x1002

    const/16 v2, 0x1001

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$3;->b:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getItemViewType(I)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$3;->b:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->access$200(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;)Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$b;

    move-result-object v1

    if-nez v1, :cond_2

    if-eq v0, v5, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$3;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eq v0, v5, :cond_3

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$3;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$3;->b:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->access$200(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;)Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$3;->a:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$3;->b:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$b;->a(Landroid/support/v7/widget/GridLayoutManager;I)I

    move-result v0

    goto :goto_0
.end method
