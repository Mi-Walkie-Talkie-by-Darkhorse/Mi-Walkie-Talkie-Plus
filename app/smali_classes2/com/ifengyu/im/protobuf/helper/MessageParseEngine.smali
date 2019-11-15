.class public Lcom/ifengyu/im/protobuf/helper/MessageParseEngine;
.super Ljava/lang/Object;
.source "MessageParseEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/im/protobuf/helper/MessageParseEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/protobuf/helper/MessageParseEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseGroupNotifyMsg(Ljava/lang/String;)Lcom/ifengyu/im/imservice/entity/NotifyCommand;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ifengyu/im/protobuf/helper/MessageParseEngine;->TAG:Ljava/lang/String;

    const-string v2, "json string is empty"

    invoke-static {v0, v2}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->commandId:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v3, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v1, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->changeType:I

    if-ne v1, v6, :cond_4

    invoke-virtual {v3}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->getUserInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;

    const-string v2, "\"%s\"\u52a0\u5165\u4e86\u7fa4\u804a"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->setDisplayContent(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v1, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v1, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->reqUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->setDisplayName(Ljava/lang/String;)V

    const-string v1, "\u9080\u8bf7\u60a8\u52a0\u5165\u7fa4\u7ec4\u300c%s\u300d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v3, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->setDisplayContent(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->getResultCode()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u540c\u610f\u4e86\u60a8\u7684\u52a0\u7fa4\u9080\u8bf7"

    :goto_1
    iget-object v2, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v2, v2, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->inviteUserName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->setDisplayContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "\u62d2\u7edd\u4e86\u60a8\u7684\u52a0\u7fa4\u9080\u8bf7"

    goto :goto_1

    :sswitch_3
    iget-object v1, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v1, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->reqUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->setDisplayName(Ljava/lang/String;)V

    const-string v1, "\u7533\u8bf7\u52a0\u5165\u7fa4\u7ec4\u300c%s\u300d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v3, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->setDisplayContent(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v1, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->getResultCode()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u540c\u610f\u4e86\u60a8\u7684\u52a0\u7fa4\u7533\u8bf7"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->setDisplayContent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v1, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->creatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "\u62d2\u7edd\u4e86\u60a8\u7684\u52a0\u7fa4\u7533\u8bf7"

    goto :goto_2

    :cond_4
    iget v1, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->changeType:I

    if-ne v1, v7, :cond_0

    invoke-virtual {v3}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->getUserInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;

    const-string v2, ""

    iget v4, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->leaveType:I

    if-ne v4, v6, :cond_5

    const-string v2, "\"%s\"\u9000\u51fa\u4e86\u7fa4\u804a"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->setDisplayContent(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget v3, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->leaveType:I

    if-ne v3, v7, :cond_6

    const-string v2, "\"%s\"\u88ab\u79fb\u51fa\u4e86\u7fa4\u804a"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v2

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x40d -> :sswitch_0
        0x416 -> :sswitch_3
        0x419 -> :sswitch_4
        0x41c -> :sswitch_1
        0x41f -> :sswitch_2
    .end sparse-switch
.end method

.method public static parseGroupNotifyMsg(Lcom/ifengyu/im/imservice/model/MessageEntity;)Lcom/ifengyu/im/imservice/model/MessageEntity;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/MessageParseEngine;->parseGroupNotifyMsg(Ljava/lang/String;)Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setCommand(Lcom/ifengyu/im/imservice/entity/NotifyCommand;)V

    return-object p0
.end method
