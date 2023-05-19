.class Lcom/ifengyu/intercom/ui/base/o$b;
.super Landroidx/recyclerview/widget/RecyclerView$p;
.source "BaseSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/base/o;->p3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/base/o;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/base/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/base/o$b;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$p;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/o$b;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/base/o;->l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/base/o$b;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/base/o;->j3()Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/d;->c(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method
