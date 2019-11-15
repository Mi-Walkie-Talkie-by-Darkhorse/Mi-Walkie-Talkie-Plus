.class Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$6;
.super Lcom/ifengyu/library/widget/recyclerview/e/b;
.source "SessionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/library/widget/recyclerview/e/b",
        "<",
        "Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$6;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$6;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$6;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;->onItemClick(Lcom/ifengyu/im/imservice/entity/RecentInfo;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$6;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-static {v1, v0, p3}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;Lcom/ifengyu/im/imservice/entity/RecentInfo;I)V

    return-void
.end method

.method public c(Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public d(Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public synthetic onItemChildClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$6;->c(Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic onItemChildLongClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$6;->d(Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic onItemClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$6;->a(Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic onItemLongClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$6;->b(Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;Landroid/view/View;I)V

    return-void
.end method
