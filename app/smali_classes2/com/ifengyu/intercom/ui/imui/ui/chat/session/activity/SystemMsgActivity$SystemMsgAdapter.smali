.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;
.source "SystemMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemMsgAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter",
        "<",
        "Lcom/ifengyu/im/imservice/model/MessageEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v1, 0x0

    const v6, 0x7f10029b

    const v5, 0x7f10029c

    const/16 v2, 0x8

    const v3, 0x7f1001d0

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v3, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    invoke-virtual {p3}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getCommand()Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    move-result-object v3

    iget v0, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->commandId:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :sswitch_0
    const v0, 0x7f100297

    iget-object v4, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v4, v4, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->reqUserName:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    const v0, 0x7f100298

    iget-object v3, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    iget v0, p3, Lcom/ifengyu/im/imservice/model/MessageEntity;->status:I

    if-ne v0, v7, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {p1, v5, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    iget v0, p3, Lcom/ifengyu/im/imservice/model/MessageEntity;->status:I

    if-ne v0, v7, :cond_2

    :goto_3
    invoke-virtual {p1, v6, v2}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    const-string v0, "\u52a0\u5165"

    invoke-virtual {p1, v5, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    const-string v0, "\u5df2\u52a0\u5165"

    invoke-virtual {p1, v6, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter$$Lambda$0;

    invoke-direct {v0, p0, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    invoke-virtual {p1, v5, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILandroid/view/View$OnClickListener;)Lcom/ifengyu/intercom/ui/imui/base/a;

    const v0, 0x7f1001b7

    const v1, 0x7f0201ad

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_3

    :sswitch_1
    const v0, 0x7f100297

    iget-object v1, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v1, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->inviteUserName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    const v0, 0x7f100298

    iget-object v1, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    invoke-virtual {p1, v5, v2}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    invoke-virtual {p1, v6, v2}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    const v1, 0x7f1001b7

    iget-object v0, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v0, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->resultCode:I

    if-nez v0, :cond_3

    const v0, 0x7f0201ad

    :goto_4
    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    goto :goto_1

    :cond_3
    const v0, 0x7f0201ae

    goto :goto_4

    :sswitch_2
    const v0, 0x7f100297

    iget-object v4, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v4, v4, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->reqUserName:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    const v0, 0x7f100298

    iget-object v3, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    iget v0, p3, Lcom/ifengyu/im/imservice/model/MessageEntity;->status:I

    if-ne v0, v7, :cond_4

    move v0, v1

    :goto_5
    invoke-virtual {p1, v5, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    iget v0, p3, Lcom/ifengyu/im/imservice/model/MessageEntity;->status:I

    if-ne v0, v7, :cond_5

    :goto_6
    invoke-virtual {p1, v6, v2}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    const-string v0, "\u540c\u610f"

    invoke-virtual {p1, v5, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    const-string v0, "\u5df2\u540c\u610f"

    invoke-virtual {p1, v6, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter$$Lambda$1;

    invoke-direct {v0, p0, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter$$Lambda$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    invoke-virtual {p1, v5, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILandroid/view/View$OnClickListener;)Lcom/ifengyu/intercom/ui/imui/base/a;

    const v0, 0x7f1001b7

    const v1, 0x7f0201ac

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    move v2, v1

    goto :goto_6

    :sswitch_3
    const v1, 0x7f100297

    iget-object v0, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v0, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->creatorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v0, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->creatorId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    const v0, 0x7f100298

    iget-object v1, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    invoke-virtual {p1, v5, v2}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    invoke-virtual {p1, v6, v2}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    const v1, 0x7f1001b7

    iget-object v0, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v0, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->resultCode:I

    if-nez v0, :cond_7

    const v0, 0x7f0201ac

    :goto_8
    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(II)Lcom/ifengyu/intercom/ui/imui/base/a;

    goto/16 :goto_1

    :cond_6
    iget-object v0, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v0, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->creatorName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    const v0, 0x7f0201ae

    goto :goto_8

    :sswitch_data_0
    .sparse-switch
        0x416 -> :sswitch_2
        0x419 -> :sswitch_3
        0x41c -> :sswitch_0
        0x41f -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;->bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method

.method public getItemLayoutId(I)I
    .locals 1

    const v0, 0x7f0400ab

    return v0
.end method

.method final synthetic lambda$bindData$0$SystemMsgActivity$SystemMsgAdapter(Lcom/ifengyu/im/imservice/model/MessageEntity;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    return-void
.end method

.method final synthetic lambda$bindData$1$SystemMsgActivity$SystemMsgAdapter(Lcom/ifengyu/im/imservice/model/MessageEntity;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    return-void
.end method
