.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;
.super Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;
.source "MsgVIewHolderCustom.java"


# instance fields
.field protected bodyTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ifengyu/library/widget/recyclerview/adapter/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;-><init>(Lcom/ifengyu/library/widget/recyclerview/adapter/a;)V

    return-void
.end method

.method private layoutDirection()V
    .locals 6

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->bodyTextView:Landroid/widget/TextView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->bodyTextView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->bodyTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v1

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    invoke-static {v3}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v3

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->bodyTextView:Landroid/widget/TextView;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->bodyTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->bodyTextView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v1

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    invoke-static {v5}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v3

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected bindContentView()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->layoutDirection()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->bodyTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->bodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->bodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->bodyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected getContentResId()I
    .locals 1

    const v0, 0x7f0400a8

    return v0
.end method

.method protected getDisplayText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected inflateContentView()V
    .locals 1

    const v0, 0x7f100292

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->bodyTextView:Landroid/widget/TextView;

    return-void
.end method
