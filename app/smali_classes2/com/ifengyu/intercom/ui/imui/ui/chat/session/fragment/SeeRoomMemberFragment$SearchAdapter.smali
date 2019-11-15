.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;
.source "SeeRoomMemberFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;
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

.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;Landroid/content/Context;Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 6

    const v5, 0x7f1002a7

    const/4 v4, 0x0

    const v0, 0x7f1002a6

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;

    invoke-virtual {p1, v5}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(I)Landroid/widget/TextView;

    move-result-object v2

    const-string v1, ""

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->getItemViewType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    move-object v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->getSearchKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/ifengyu/im/DB/entity/UserEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/entity/SearchElement;->reset()V

    :cond_0
    invoke-virtual {p1, v5}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3}, Lcom/ifengyu/im/DB/entity/UserEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/ifengyu/im/utils/IMUIHelper;->setTextHilighted(Landroid/widget/TextView;Ljava/lang/String;Lcom/ifengyu/im/imservice/entity/SearchElement;)V

    return-void

    :pswitch_0
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setCornerRadius(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;)I

    move-result v1

    iget v3, p3, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    invoke-static {v1, v3}, Lcom/ifengyu/im/imservice/manager/GroupHelper;->getGroupMemberDisplayName(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Landroid/view/View;)Lcom/bumptech/glide/g;

    move-result-object v2

    iget-object v3, p3, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/h;

    move-object v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v4}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setCornerRadius(I)V

    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Landroid/view/View;)Lcom/bumptech/glide/g;

    move-result-object v2

    const v3, 0x7f020091

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/h;

    move-object v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v4}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setCornerRadius(I)V

    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Landroid/view/View;)Lcom/bumptech/glide/g;

    move-result-object v2

    const v3, 0x7f020092

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/h;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/DB/entity/UserEntity;)V

    return-void
.end method

.method public getItemLayoutId(I)I
    .locals 1

    const v0, 0x7f0400b3

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getItemType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->searchKey:Ljava/lang/String;

    return-object v0
.end method

.method public setSearchKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->searchKey:Ljava/lang/String;

    return-void
.end method
