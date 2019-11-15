.class Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$3;
.super Ljava/lang/Object;
.source "BaseFetchLoadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->getFetchingView(Landroid/view/ViewGroup;)Lcom/ifengyu/library/widget/recyclerview/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$3;->a:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$3;->a:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->access$300(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;)Lcom/ifengyu/library/widget/recyclerview/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$3;->a:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->access$300(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;)Lcom/ifengyu/library/widget/recyclerview/f/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$3;->a:Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
