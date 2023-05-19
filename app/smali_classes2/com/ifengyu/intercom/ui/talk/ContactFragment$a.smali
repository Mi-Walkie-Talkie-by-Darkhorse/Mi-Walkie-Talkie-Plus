.class Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;
.super Ljava/lang/Object;
.source "ContactFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/talk/ContactFragment;->C3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/talk/ContactFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/talk/ContactFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/ContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/ContactFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->tvCenterIndex:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/ContactFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->tvCenterIndex:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u2191"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/ContactFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/ContactFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/ContactFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->z3(Lcom/ifengyu/intercom/ui/talk/ContactFragment;)Lcom/ifengyu/intercom/ui/base/m;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/c0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->I()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/ContactFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/ContactFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/ContactFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->tvCenterIndex:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/ContactFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->tvCenterIndex:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
