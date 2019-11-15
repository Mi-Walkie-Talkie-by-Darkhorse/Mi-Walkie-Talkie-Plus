.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;
.source "ChatRoomInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;
    }
.end annotation


# static fields
.field private static final MAX_DISPLAY_MEMBER_IF_CREATOR:I = 0x12

.field private static final MAX_DISPLAY_MEMBER_IF_NOT_CREATOR:I = 0x13

.field public static final REQUEST_ADD_MEMBER:I = 0x10

.field public static final REQUEST_DELETE_MEMBER:I = 0x11

.field public static final REQUEST_TRANSFER_CREATOR:I = 0x12


# instance fields
.field private mAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;

.field mBtnDeleteQuit:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100242
    .end annotation
.end field

.field mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b9
    .end annotation
.end field

.field mItemGroupName:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10023e
    .end annotation
.end field

.field mItemGroupQrCode:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10023f
    .end annotation
.end field

.field mItemMyNickname:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100240
    .end annotation
.end field

.field mItemTransferOwner:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100241
    .end annotation
.end field

.field mMoreView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10023d
    .end annotation
.end field

.field mRvGroupList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10017c
    .end annotation
.end field

.field private mSessionId:I

.field mTitleBar:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100097
    .end annotation
.end field

.field mTvGroupId:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10023c
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mSessionId:I

    return v0
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;

    return-object v0
.end method

.method static final synthetic lambda$showUserInfoDialog$1$ChatRoomInfoFragment(ZLcom/ifengyu/im/DB/entity/UserEntity;Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p0, :cond_0

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/event/ChatEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/ChatEvent$Event;->START_CHAT:Lcom/ifengyu/im/imservice/event/ChatEvent$Event;

    invoke-direct {v1, v2, p1}, Lcom/ifengyu/im/imservice/event/ChatEvent;-><init>(Lcom/ifengyu/im/imservice/event/ChatEvent$Event;Lcom/ifengyu/im/DB/entity/UserEntity;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private leaveGroup(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->showTipDiaog()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$4;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqLeaveGroup(ILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public static newInstance(I)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;-><init>()V

    const-string v2, "session_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private openKickoutUserUI()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mSessionId:I

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->newInstance(I)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->startFragment(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;)V

    return-void
.end method

.method private openQRCodeUI()V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mSessionId:I

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->a(Landroid/content/Context;II)V

    return-void
.end method

.method private openSelectMemberUI()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mSessionId:I

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->newInstance(I)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->startFragment(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;)V

    return-void
.end method

.method private refreshUI()V
    .locals 13

    const/16 v12, 0x13

    const/16 v11, 0x12

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mSessionId:I

    invoke-virtual {v0, v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->findGroup(I)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v6

    invoke-virtual {v5}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getCreatorId()I

    move-result v7

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mTvTitle:Landroid/widget/TextView;

    const-string v8, "\u7fa4\u7ec4\u4fe1\u606f\uff08%s\uff09"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getUserCnt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mTvGroupId:Landroid/widget/TextView;

    const-string v8, "ID:%s"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->findUserInGroup(II)Lcom/ifengyu/im/DB/entity/GroupMember;

    move-result-object v8

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->getGroupMembers(I)Ljava/util/List;

    move-result-object v0

    if-ne v7, v6, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v11, :cond_6

    invoke-interface {v0, v2, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    :goto_1
    iget-object v9, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mMoreView:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mMoreView:Landroid/view/View;

    new-instance v9, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$1;

    invoke-direct {v9, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setItemType(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v7, v6, :cond_4

    new-instance v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setItemType(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemGroupQrCode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemMyNickname:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/view/ItemView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/view/ItemView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemTransferOwner:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/view/ItemView;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, v5, Lcom/ifengyu/im/DB/entity/GroupEntity;->mainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/ifengyu/im/DB/entity/GroupMember;->getGroupNick()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemMyNickname:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v8}, Lcom/ifengyu/im/DB/entity/GroupMember;->getGroupNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;->setNewData(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v12, :cond_6

    invoke-interface {v0, v2, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemGroupQrCode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemMyNickname:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/view/ItemView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v4}, Lcom/ifengyu/library/widget/view/ItemView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemTransferOwner:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v4}, Lcom/ifengyu/library/widget/view/ItemView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginInfo()Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemMyNickname:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v0, v0, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    move-object v3, v0

    move v0, v2

    goto/16 :goto_1
.end method

.method private showGroupNameDialog()V
    .locals 7

    new-instance v1, Lcom/ifengyu/library/widget/dialog/a$a;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ifengyu/library/widget/dialog/a$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getValueText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0900d8

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/dialog/a$a;->a(I)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$a;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/dialog/a$a;->a(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/a$a;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Lcom/ifengyu/intercom/ui/imui/ui/a/a;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Lcom/ifengyu/intercom/ui/imui/ui/a/a;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/ifengyu/library/widget/dialog/a$a;->a([Landroid/text/InputFilter;)Lcom/ifengyu/library/widget/dialog/a$a;

    move-result-object v0

    const v3, 0x7f09006c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/ifengyu/library/widget/dialog/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$a;

    const v3, 0x7f090075

    new-instance v4, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;Lcom/ifengyu/library/widget/dialog/a$a;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/ifengyu/library/widget/dialog/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$a;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$a;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void
.end method

.method private showLeaveGroupDialog()V
    .locals 3

    new-instance v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;-><init>(Landroid/content/Context;)V

    const-string v1, "\u79bb\u5f00\u7fa4\u804a"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u786e\u5b9a\u79bb\u5f00\u8be5\u7fa4\u804a\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/a$b;

    move-result-object v0

    const v1, 0x7f09006c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const v1, 0x7f090075

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$4;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$4;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$b;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void
.end method

.method private showMyNicknameInGroupDialog()V
    .locals 7

    new-instance v1, Lcom/ifengyu/library/widget/dialog/a$a;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ifengyu/library/widget/dialog/a$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemMyNickname:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getValueText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0900d9

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/dialog/a$a;->a(I)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$a;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/dialog/a$a;->a(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/a$a;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Lcom/ifengyu/intercom/ui/imui/ui/a/a;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Lcom/ifengyu/intercom/ui/imui/ui/a/a;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/ifengyu/library/widget/dialog/a$a;->a([Landroid/text/InputFilter;)Lcom/ifengyu/library/widget/dialog/a$a;

    move-result-object v0

    const v3, 0x7f09006c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/ifengyu/library/widget/dialog/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$a;

    const v3, 0x7f090075

    new-instance v4, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;Lcom/ifengyu/library/widget/dialog/a$a;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/ifengyu/library/widget/dialog/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$a;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$a;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void
.end method

.method private showUserInfoDialog(Lcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v3

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginInfo()Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->TAG:Ljava/lang/String;

    const-string v1, "my user info is null"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-ne v3, v0, :cond_1

    move v0, v1

    :goto_1
    new-instance v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    move-result-object v3

    const-string v4, "ID:%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->setSubTitle(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->setImageUrl(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    move-result-object v2

    if-eqz v0, :cond_2

    const v1, 0x7f090075

    :goto_2
    new-instance v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$1;

    invoke-direct {v3, v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$1;-><init>(ZLcom/ifengyu/im/DB/entity/UserEntity;)V

    invoke-virtual {v2, v1, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->show()Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const v1, 0x7f090043

    goto :goto_2
.end method

.method private updateGroupName(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->showTipDiaog()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mSessionId:I

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$3;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqUpdateGroupName(ILjava/lang/String;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method private updateMyNickNameInGroup(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->showTipDiaog()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mSessionId:I

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->reqUpdateMyNicknameInGroup(ILjava/lang/String;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f040094

    return v0
.end method

.method protected initBundle(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mSessionId:I

    :cond_0
    return-void
.end method

.method protected initData()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->refreshUI()V

    return-void
.end method

.method protected initWidget(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mTitleBar:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mRvGroupList:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/ifengyu/library/widget/recyclerview/b/a;

    invoke-direct {v3, v0, v1, v4}, Lcom/ifengyu/library/widget/recyclerview/b/a;-><init>(IIZ)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mRvGroupList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mRvGroupList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mRvGroupList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, p0}, Lcom/ifengyu/library/widget/view/ItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemGroupQrCode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemMyNickname:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, p0}, Lcom/ifengyu/library/widget/view/ItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemTransferOwner:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, p0}, Lcom/ifengyu/library/widget/view/ItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mBtnDeleteQuit:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    invoke-virtual {v0, p0}, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method final synthetic lambda$initWidget$0$ChatRoomInfoFragment(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->popBackStack()V

    return-void
.end method

.method final synthetic lambda$showGroupNameDialog$2$ChatRoomInfoFragment(Lcom/ifengyu/library/widget/dialog/a$a;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/dialog/a$a;->a()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p2}, Lcom/ifengyu/library/util/i;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->updateGroupName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f09020f

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    goto :goto_0
.end method

.method final synthetic lambda$showLeaveGroupDialog$4$ChatRoomInfoFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mSessionId:I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->leaveGroup(I)V

    return-void
.end method

.method final synthetic lambda$showMyNicknameInGroupDialog$3$ChatRoomInfoFragment(Lcom/ifengyu/library/widget/dialog/a$a;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/dialog/a$a;->a()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p2}, Lcom/ifengyu/library/util/i;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->updateMyNickNameInGroup(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f090215

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->refreshUI()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->refreshUI()V

    goto :goto_0

    :pswitch_2
    const-string v0, "creator_id"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->TAG:Ljava/lang/String;

    const-string v2, "transfer success,new creator is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f090224

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->refreshUI()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->showGroupNameDialog()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->openQRCodeUI()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->showMyNicknameInGroupDialog()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->openSelectMemberUI()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->showLeaveGroupDialog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10023e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$GroupListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->showUserInfoDialog(Lcom/ifengyu/im/DB/entity/UserEntity;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mSessionId:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->start(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->openKickoutUserUI()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
