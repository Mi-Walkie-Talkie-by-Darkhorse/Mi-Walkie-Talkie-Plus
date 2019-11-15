.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/helper/TeamNotificationHelper;
.super Ljava/lang/Object;
.source "TeamNotificationHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/helper/TeamNotificationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/helper/TeamNotificationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTeamNotificationText(Lcom/ifengyu/im/imservice/model/MessageEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/ifengyu/im/protobuf/helper/MessageParseEngine;->parseGroupNotifyMsg(Lcom/ifengyu/im/imservice/model/MessageEntity;)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    iget-object v2, v0, Lcom/ifengyu/im/imservice/model/MessageEntity;->command:Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    if-nez v2, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/helper/TeamNotificationHelper;->TAG:Ljava/lang/String;

    const-string v1, "notifyCommand is null,return empty str"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v0, v2, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->commandId:I

    const/16 v1, 0x40d

    if-ne v0, v1, :cond_1

    iget-object v3, v2, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v0, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->changeType:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v3}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->getUserInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;

    const-string v1, "\"%s\"\u52a0\u5165\u4e86\u7fa4\u804a"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->setDisplayContent(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v3}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->getUserInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;

    const-string v1, ""

    iget v4, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->leaveType:I

    if-ne v4, v6, :cond_2

    const-string v1, "\"%s\"\u9000\u51fa\u4e86\u7fa4\u804a"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->setDisplayContent(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget v3, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->leaveType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const-string v1, "\"%s\"\u88ab\u79fb\u51fa\u4e86\u7fa4\u804a"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
