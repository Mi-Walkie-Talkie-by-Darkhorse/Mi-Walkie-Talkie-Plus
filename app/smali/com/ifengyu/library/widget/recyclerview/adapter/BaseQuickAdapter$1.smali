.class Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BaseQuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$1;->a:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter$1;->a:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->access$002(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
