.class public Lcom/mi/mimsgsdk/utils/BusinessDBUtils;
.super Ljava/lang/Object;
.source "BusinessDBUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile userMaxSingleChatMsgSeq:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile userMaxSingleChatMsgSeqExpired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->userMaxSingleChatMsgSeqExpired:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getGroupMaxMsgSeq(Ljava/lang/String;)J
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->getInstance()Lcom/mi/mimsgsdk/database/GroupMessageDao;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "msg_seq"

    aput-object v4, v2, v3

    const-string v3, "user_id = ? and to_guid = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/mimsgsdk/controller/MessageController;->getGUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const-string v5, "msg_seq DESC LIMIT 1"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    sget-object v2, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in query, exception code is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static getSingleMaxMsgSeq()J
    .locals 7

    sget-boolean v0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->userMaxSingleChatMsgSeqExpired:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->userMaxSingleChatMsgSeq:Landroid/util/Pair;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->getGUid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->userMaxSingleChatMsgSeq:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->userMaxSingleChatMsgSeq:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->getInstance()Lcom/mi/mimsgsdk/database/SingleMessageDao;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "msg_seq"

    aput-object v4, v2, v3

    const-string v3, "user_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/mimsgsdk/controller/MessageController;->getGUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "msg_seq DESC LIMIT 1"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->updateMaxSingleChatMsgSeq(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    sget-object v2, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in query, exception code is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static insertGroupRecord(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 10
    .param p0    # Lcom/mi/mimsgsdk/service/aidl/MiMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v8, 0x1

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    invoke-static {v1}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->getGroupMaxMsgSeq(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v2, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgSeq:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    add-long v6, v4, v8

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->insertGroupRecordDb(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    sub-long v4, v2, v4

    sub-long/2addr v4, v8

    long-to-int v4, v4

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/mimsgsdk/controller/MessageController;->getSyncLimit()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v5, Lcom/mi/mimsgsdk/utils/BusinessDBUtils$2;

    invoke-direct {v5, p0}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils$2;-><init>(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    invoke-virtual/range {v0 .. v5}, Lcom/mi/mimsgsdk/controller/MessageController;->pullOldGroupMessage(Ljava/lang/String;JILcom/mi/milinkforgame/sdk/session/ResponseListener;)Z

    goto :goto_0
.end method

.method public static insertGroupRecordDb(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 4
    .param p0    # Lcom/mi/mimsgsdk/service/aidl/MiMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/mi/mimsgsdk/controller/MessageController;->onReceiveGameMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    iget-wide v2, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgSeq:J

    invoke-static {v0, v2, v3}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->isGroupRecordSeqExist(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->parseGameMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)Lcom/mi/mimsgsdk/database/pojo/ChatMessage;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->getInstance()Lcom/mi/mimsgsdk/database/GroupMessageDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->insert(Lcom/mi/mimsgsdk/database/pojo/ChatMessage;)V

    :cond_0
    return-void
.end method

.method public static insertUserRecord(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 10
    .param p0    # Lcom/mi/mimsgsdk/service/aidl/MiMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v8, 0x1

    invoke-static {}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->getSingleMaxMsgSeq()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgSeq:J

    sget-object v4, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxMsgSeq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgSeq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    add-long v4, v0, v8

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->insertUserRecordDb(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v4

    sub-long v0, v2, v0

    sub-long/2addr v0, v8

    long-to-int v0, v0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/controller/MessageController;->getSyncLimit()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Lcom/mi/mimsgsdk/utils/BusinessDBUtils$1;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils$1;-><init>(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/mi/mimsgsdk/controller/MessageController;->pullOldUserMessage(JILcom/mi/milinkforgame/sdk/session/ResponseListener;)Z

    goto :goto_0
.end method

.method public static insertUserRecordDb(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 3
    .param p0    # Lcom/mi/mimsgsdk/service/aidl/MiMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x1

    sget-object v0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->TAG:Ljava/lang/String;

    const-string v1, "insertUserRecordDb"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lcom/mi/mimsgsdk/controller/MessageController;->onReceiveGameMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    iget-wide v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgSeq:J

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->isUserRecordSeqExist(J)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->TAG:Ljava/lang/String;

    const-string v1, "insert"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->parseGameMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)Lcom/mi/mimsgsdk/database/pojo/ChatMessage;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->getInstance()Lcom/mi/mimsgsdk/database/SingleMessageDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->insert(Lcom/mi/mimsgsdk/database/pojo/ChatMessage;)V

    sput-boolean v2, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->userMaxSingleChatMsgSeqExpired:Z

    :cond_0
    return-void
.end method

.method public static isGroupRecordDuplicate(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->getInstance()Lcom/mi/mimsgsdk/database/GroupMessageDao;

    move-result-object v3

    invoke-static {}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->getInstance()Lcom/mi/mimsgsdk/database/GroupMessageDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->getTableColumns()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_id = ? and from_guid = ? and to_guid = ? and msg_id = ? "

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mi/mimsgsdk/controller/MessageController;->getGUid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    const/4 v7, 0x2

    aput-object p1, v6, v7

    const/4 v7, 0x3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v3, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in query, exception code is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static isGroupRecordSeqExist(Ljava/lang/String;J)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->getInstance()Lcom/mi/mimsgsdk/database/GroupMessageDao;

    move-result-object v3

    invoke-static {}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->getInstance()Lcom/mi/mimsgsdk/database/SingleMessageDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->getTableColumns()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_id = ? and to_guid = ? and msg_seq = ? "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mi/mimsgsdk/controller/MessageController;->getGUid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    const/4 v7, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v3, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in query, exception code is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isUserRecordDuplicate(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->getInstance()Lcom/mi/mimsgsdk/database/SingleMessageDao;

    move-result-object v3

    invoke-static {}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->getInstance()Lcom/mi/mimsgsdk/database/SingleMessageDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->getTableColumns()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_id = ? and from_guid = ? and to_guid = ? and msg_id = ? "

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mi/mimsgsdk/controller/MessageController;->getGUid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    const/4 v7, 0x2

    aput-object p1, v6, v7

    const/4 v7, 0x3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v3, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in query, exception code is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static isUserRecordSeqExist(J)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->getInstance()Lcom/mi/mimsgsdk/database/SingleMessageDao;

    move-result-object v3

    invoke-static {}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->getInstance()Lcom/mi/mimsgsdk/database/SingleMessageDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->getTableColumns()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_id = ? and msg_seq = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mi/mimsgsdk/controller/MessageController;->getGUid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v3, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in query, exception code is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static parseGameMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)Lcom/mi/mimsgsdk/database/pojo/ChatMessage;
    .locals 4
    .param p0    # Lcom/mi/mimsgsdk/service/aidl/MiMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;-><init>()V

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/controller/MessageController;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->setAppid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->setFromGuid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->setToGuid(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgSeq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->setMsgSeq(Ljava/lang/Long;)V

    iget-wide v2, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    invoke-virtual {v0, v2, v3}, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->setMsgId(J)V

    iget v1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->sendTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->setSentTime(J)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    invoke-interface {v1}, Lcom/mi/mimsgsdk/message/MiMsgBody;->codeBody()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->setBody([B)V

    :cond_0
    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/controller/MessageController;->getGUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->setUserId(Ljava/lang/String;)V

    return-object v0
.end method

.method private static updateMaxSingleChatMsgSeq(J)V
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->getGUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->userMaxSingleChatMsgSeq:Landroid/util/Pair;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->userMaxSingleChatMsgSeqExpired:Z

    return-void
.end method
