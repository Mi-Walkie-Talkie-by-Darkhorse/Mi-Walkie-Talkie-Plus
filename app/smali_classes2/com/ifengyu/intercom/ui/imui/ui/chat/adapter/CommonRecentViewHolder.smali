.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;
.super Lcom/ifengyu/library/widget/recyclerview/d/b;
.source "CommonRecentViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/library/widget/recyclerview/d/b",
        "<",
        "Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;",
        "Lcom/ifengyu/library/widget/recyclerview/d/a;",
        "Lcom/ifengyu/im/imservice/entity/RecentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field protected bottomLine:Landroid/view/View;

.field private imgUnreadExplosion:Landroid/widget/ImageView;

.field protected ivAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

.field private lastUnreadCount:I

.field mAdapter:Lcom/ifengyu/library/widget/groupicon/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/library/widget/groupicon/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected topLine:Landroid/view/View;

.field protected tvDatetime:Landroid/widget/TextView;

.field protected tvLastMsg:Landroid/widget/TextView;

.field protected tvNickname:Landroid/widget/TextView;

.field protected tvUnread:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;


# direct methods
.method public constructor <init>(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/d/b;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->lastUnreadCount:I

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->mAdapter:Lcom/ifengyu/library/widget/groupicon/a;

    return-void
.end method

.method private inflate(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/entity/RecentInfo;)V
    .locals 2

    const v1, 0x7f100295

    const v0, 0x7f1001d0

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->topLine:Landroid/view/View;

    const v0, 0x7f100273

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->bottomLine:Landroid/view/View;

    const v0, 0x7f1001b7

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->ivAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    const v0, 0x7f100297

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->tvNickname:Landroid/widget/TextView;

    const v0, 0x7f100294

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->tvDatetime:Landroid/widget/TextView;

    const v0, 0x7f100298

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->tvLastMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Lcom/ifengyu/library/widget/recyclerview/d/a;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->tvUnread:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    const v0, 0x7f100296

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->imgUnreadExplosion:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Lcom/ifengyu/library/widget/recyclerview/d/a;->a(I)Lcom/ifengyu/library/widget/recyclerview/d/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->tvUnread:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;Lcom/ifengyu/im/imservice/entity/RecentInfo;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->setTouchListener(Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;)V

    return-void
.end method

.method private refresh(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/entity/RecentInfo;I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->lastUnreadCount:I

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getUnReadCnt()I

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getUnReadCnt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->lastUnreadCount:I

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->updateBackground(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/entity/RecentInfo;I)V

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->loadPortrait(Lcom/ifengyu/im/imservice/entity/RecentInfo;)V

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->updateMsgLabel(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/entity/RecentInfo;)V

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->updateNewIndicator(Lcom/ifengyu/im/imservice/entity/RecentInfo;)V

    return-void
.end method

.method private updateBackground(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/entity/RecentInfo;I)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->topLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;

    invoke-virtual {v0, p3}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->isFirstDataItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;

    invoke-virtual {v0, p3}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->isLastDataItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/recyclerview/d/a;->c()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method private updateMsgLabel(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/entity/RecentInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->tvNickname:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->tvDatetime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getUpdateTime()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/ifengyu/library/util/k;->a(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->tvLastMsg:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getLatestMsgData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateNewIndicator(Lcom/ifengyu/im/imservice/entity/RecentInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getUnReadCnt()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->tvUnread:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->tvUnread:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->unreadCountShowRule(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public convert(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/entity/RecentInfo;IZ)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->inflate(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/entity/RecentInfo;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->refresh(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/entity/RecentInfo;I)V

    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic convert(Lcom/ifengyu/library/widget/recyclerview/d/a;Ljava/lang/Object;IZ)V
    .locals 0

    check-cast p2, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->convert(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/entity/RecentInfo;IZ)V

    return-void
.end method

.method protected loadPortrait(Lcom/ifengyu/im/imservice/entity/RecentInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getSessionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->ivAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->setImagesData(Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getSessionType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->ivAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->mAdapter:Lcom/ifengyu/library/widget/groupicon/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->setAdapter(Lcom/ifengyu/library/widget/groupicon/a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->ivAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getAvatar()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->setImagesData(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected unreadCountShowRule(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x63

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
