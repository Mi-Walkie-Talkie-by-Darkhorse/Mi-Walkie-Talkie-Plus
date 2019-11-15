.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;
.source "ChatRoomInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupListAdapter"
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
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;Landroid/content/Context;Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f1002a6

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;

    const v1, 0x7f1002a7

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;->getItemViewType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setCornerRadius(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;)I

    move-result v2

    iget v3, p3, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    invoke-static {v2, v3}, Lcom/ifengyu/im/imservice/manager/GroupHelper;->getGroupMemberDisplayName(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Landroid/view/View;)Lcom/bumptech/glide/g;

    move-result-object v1

    iget-object v2, p3, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/h;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v3}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setCornerRadius(I)V

    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Landroid/view/View;)Lcom/bumptech/glide/g;

    move-result-object v1

    const v2, 0x7f020091

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/h;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v3}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setCornerRadius(I)V

    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Landroid/view/View;)Lcom/bumptech/glide/g;

    move-result-object v1

    const v2, 0x7f020092

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/h;

    goto :goto_0

    nop

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;->bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/DB/entity/UserEntity;)V

    return-void
.end method

.method public getItemLayoutId(I)I
    .locals 1

    const v0, 0x7f0400b3

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;->getItem(I)Ljava/lang/Object;

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
