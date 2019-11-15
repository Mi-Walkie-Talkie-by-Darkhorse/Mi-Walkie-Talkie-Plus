.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderNotification;
.super Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;
.source "MsgViewHolderNotification.java"


# instance fields
.field protected notificationTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ifengyu/library/widget/recyclerview/adapter/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;-><init>(Lcom/ifengyu/library/widget/recyclerview/adapter/a;)V

    return-void
.end method

.method private handleTextNotification(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderNotification;->notificationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderNotification;->notificationTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method protected bindContentView()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderNotification;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderNotification;->handleTextNotification(Ljava/lang/String;)V

    return-void
.end method

.method protected getContentResId()I
    .locals 1

    const v0, 0x7f0400e8

    return v0
.end method

.method protected getDisplayText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderNotification;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    iget-object v0, v0, Lcom/ifengyu/im/imservice/model/MessageEntity;->command:Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderNotification;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    iget-object v0, v0, Lcom/ifengyu/im/imservice/model/MessageEntity;->command:Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    iget-object v0, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayContent:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected inflateContentView()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderNotification;->mItemView:Landroid/view/View;

    const v1, 0x7f10030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderNotification;->notificationTextView:Landroid/widget/TextView;

    return-void
.end method

.method protected isMiddleItem()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
