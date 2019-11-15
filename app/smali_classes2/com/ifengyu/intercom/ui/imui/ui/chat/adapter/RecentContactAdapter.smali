.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;
.super Lcom/ifengyu/library/widget/recyclerview/adapter/b;
.source "RecentContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter$ViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/library/widget/recyclerview/adapter/b",
        "<",
        "Lcom/ifengyu/im/imservice/entity/RecentInfo;",
        "Lcom/ifengyu/library/widget/recyclerview/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/entity/RecentInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/recyclerview/adapter/b;-><init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;)V

    const/4 v0, 0x1

    const v1, 0x7f0400ac

    const-class v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/SystemRecentViewHolder;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;->addItemType(IILjava/lang/Class;)V

    const/4 v0, 0x2

    const v1, 0x7f0400a9

    const-class v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;->addItemType(IILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;->callback:Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;

    return-object v0
.end method

.method protected getItemKey(Lcom/ifengyu/im/imservice/entity/RecentInfo;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getItemKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;->getItemKey(Lcom/ifengyu/im/imservice/entity/RecentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewType(Lcom/ifengyu/im/imservice/entity/RecentInfo;)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getSessionType()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getLatestMsgType()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getSessionType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected bridge synthetic getViewType(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;->getViewType(Lcom/ifengyu/im/imservice/entity/RecentInfo;)I

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;->callback:Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;

    return-void
.end method
