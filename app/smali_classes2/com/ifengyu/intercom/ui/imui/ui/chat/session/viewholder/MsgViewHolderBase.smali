.class public abstract Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;
.super Lcom/ifengyu/library/widget/recyclerview/d/b;
.source "MsgViewHolderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/library/widget/recyclerview/d/b",
        "<",
        "Lcom/ifengyu/library/widget/recyclerview/adapter/a;",
        "Lcom/ifengyu/library/widget/recyclerview/d/a;",
        "Lcom/ifengyu/im/imservice/model/MessageEntity;",
        ">;"
    }
.end annotation


# instance fields
.field protected alertButton:Landroid/view/View;

.field private avatarLeft:Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;

.field private avatarRight:Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;

.field protected contentContainer:Landroid/widget/FrameLayout;

.field protected longClickListener:Landroid/view/View$OnLongClickListener;

.field protected mContext:Landroid/content/Context;

.field protected mItemView:Landroid/view/View;

.field protected mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

.field private mReceivedMessage:Z

.field protected nameContainer:Landroid/widget/LinearLayout;

.field public nameIconView:Landroid/widget/ImageView;

.field protected nameTextView:Landroid/widget/TextView;

.field protected progressBar:Landroid/widget/ProgressBar;

.field protected readReceiptTextView:Landroid/widget/TextView;

.field protected timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ifengyu/library/widget/recyclerview/adapter/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/d/b;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private getNameText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getSessionType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getToId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/im/imservice/manager/GroupHelper;->getGroupMemberDisplayName(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private inflate()V
    .locals 3

    const v0, 0x7f100283

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->timeTextView:Landroid/widget/TextView;

    const v0, 0x7f100284

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->avatarLeft:Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;

    const v0, 0x7f100285

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->avatarRight:Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;

    const v0, 0x7f10028b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->alertButton:Landroid/view/View;

    const v0, 0x7f10028a

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f100288

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->nameTextView:Landroid/widget/TextView;

    const v0, 0x7f10028d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->contentContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f100287

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->nameIconView:Landroid/widget/ImageView;

    const v0, 0x7f100286

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->nameContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f10028c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->readReceiptTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->contentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->getContentResId()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->contentContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->inflateContentView()V

    return-void
.end method

.method private refresh()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->setHeadImageView()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->setNameTextView()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->setTimeTextView()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->setStatus()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->setOnClickListener()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->setLongClickListener()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->setContent()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->bindContentView()V

    return-void
.end method

.method private setContent()V
    .locals 5

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->isShowBubble()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->isMiddleItem()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mItemView:Landroid/view/View;

    const v1, 0x7f100289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->isReceivedMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->contentContainer:Landroid/widget/FrameLayout;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->contentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->contentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->isMiddleItem()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->setGravity(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->isReceivedMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->setGravity(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->contentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->leftBackground()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->setGravity(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->contentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->rightBackground()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setHeadImageView()V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->avatarLeft:Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->isReceivedMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->avatarRight:Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->isShowHeadImage()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->avatarRight:Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->avatarLeft:Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->isMiddleItem()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;->loadBuddyAvatar(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private setLongClickListener()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase$4;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase$4;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->longClickListener:Landroid/view/View$OnLongClickListener;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->contentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setNameTextView()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->shouldDisplayNick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->nameTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->nameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setOnClickListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->getMsgAdapter()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getEventListener()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->alertButton:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->contentContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->avatarLeft:Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->avatarRight:Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setStatus()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->alertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->alertButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->alertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setTimeTextView()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->getMsgAdapter()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->needShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/util/k;->a(JZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->timeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract bindContentView()V
.end method

.method protected bindHolder(Lcom/ifengyu/library/widget/recyclerview/d/a;)V
    .locals 0

    return-void
.end method

.method public convert(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/model/MessageEntity;IZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/recyclerview/d/a;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mItemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/recyclerview/d/a;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->inflate()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->refresh()V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->bindHolder(Lcom/ifengyu/library/widget/recyclerview/d/a;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/ifengyu/library/widget/recyclerview/d/a;Ljava/lang/Object;IZ)V
    .locals 0

    check-cast p2, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->convert(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/model/MessageEntity;IZ)V

    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getContentResId()I
.end method

.method protected final getMsgAdapter()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    return-object v0
.end method

.method protected abstract inflateContentView()V
.end method

.method protected isMiddleItem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReceivedMessage()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getDirect()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isShowBubble()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isShowHeadImage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected leftBackground()I
    .locals 1

    const v0, 0x7f020110

    return v0
.end method

.method protected onItemClick()V
    .locals 0

    return-void
.end method

.method protected onItemLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshCurrentItem()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->refresh()V

    :cond_0
    return-void
.end method

.method protected rightBackground()I
    .locals 1

    const v0, 0x7f020111

    return v0
.end method

.method protected final setGravity(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method protected shouldDisplayNick()Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getSessionType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->isMiddleItem()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldDisplayReceipt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
