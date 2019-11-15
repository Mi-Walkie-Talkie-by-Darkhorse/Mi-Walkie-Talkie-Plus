.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;
.source "SelectMemberFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter",
        "<",
        "Lcom/ifengyu/im/DB/entity/UserEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private searchKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 6

    const v5, 0x7f1001b3

    invoke-virtual {p3}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    const v0, 0x7f1001b4

    const-string v1, "ID:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;->getSearchKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/ifengyu/im/DB/entity/UserEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/SearchElement;->reset()V

    :cond_0
    invoke-virtual {p1, v5}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/ifengyu/im/DB/entity/UserEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/im/utils/IMUIHelper;->setTextHilighted(Landroid/widget/TextView;Ljava/lang/String;Lcom/ifengyu/im/imservice/entity/SearchElement;)V

    return-void
.end method

.method public bridge synthetic bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;->bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/DB/entity/UserEntity;)V

    return-void
.end method

.method public getItemLayoutId(I)I
    .locals 1

    const v0, 0x7f0400b9

    return v0
.end method

.method public getSearchKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;->searchKey:Ljava/lang/String;

    return-object v0
.end method

.method public setSearchKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;->searchKey:Ljava/lang/String;

    return-void
.end method
