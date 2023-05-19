.class public final Lcom/ifengyu/talk/database/a/b;
.super Ljava/lang/Object;
.source "HistoryMsgDao_Impl.java"

# interfaces
.implements Lcom/ifengyu/talk/database/a/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c0<",
            "Lcom/ifengyu/talk/models/HistoryMsgModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/t0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/ifengyu/talk/database/a/b$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/talk/database/a/b$a;-><init>(Lcom/ifengyu/talk/database/a/b;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/talk/database/a/b;->b:Landroidx/room/c0;

    .line 4
    new-instance v0, Lcom/ifengyu/talk/database/a/b$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/talk/database/a/b$b;-><init>(Lcom/ifengyu/talk/database/a/b;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/talk/database/a/b;->c:Landroidx/room/t0;

    return-void
.end method

.method public static g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(JJI)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List<",
            "Lcom/ifengyu/talk/models/HistoryMsgModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "select * from history_msg where receiver = ? and id < ? order by msg_time desc limit ?"

    const/4 v2, 0x3

    .line 1
    invoke-static {v0, v2}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v3

    const/4 v0, 0x1

    move-wide/from16 v4, p1

    .line 2
    invoke-virtual {v3, v0, v4, v5}, Landroidx/room/q0;->c(IJ)V

    const/4 v0, 0x2

    move-wide/from16 v4, p3

    .line 3
    invoke-virtual {v3, v0, v4, v5}, Landroidx/room/q0;->c(IJ)V

    move/from16 v0, p5

    int-to-long v4, v0

    .line 4
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/q0;->c(IJ)V

    .line 5
    iget-object v0, v1, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 6
    iget-object v0, v1, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 7
    invoke-static {v2, v0}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "msg_type"

    .line 8
    invoke-static {v2, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "body"

    .line 9
    invoke-static {v2, v6}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "msg_time"

    .line 10
    invoke-static {v2, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sender"

    .line 11
    invoke-static {v2, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "receiver"

    .line 12
    invoke-static {v2, v9}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sender_type"

    .line 13
    invoke-static {v2, v10}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "receiver_type"

    .line 14
    invoke-static {v2, v11}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "speech_time"

    .line 15
    invoke-static {v2, v12}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "u_name"

    .line 16
    invoke-static {v2, v13}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "account"

    .line 17
    invoke-static {v2, v14}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "gid"

    .line 18
    invoke-static {v2, v15}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21
    new-instance v1, Lcom/ifengyu/talk/models/HistoryMsgModel;

    invoke-direct {v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    move-object/from16 p2, v4

    .line 22
    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 23
    invoke-virtual {v1, v3, v4}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setId(J)V

    .line 24
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 25
    invoke-virtual {v1, v3}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setMsgType(I)V

    .line 26
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 27
    :cond_0
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    :goto_1
    invoke-virtual {v1, v3}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBody(Ljava/lang/String;)V

    .line 29
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 30
    invoke-virtual {v1, v3, v4}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setMsgTime(J)V

    .line 31
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 32
    invoke-virtual {v1, v3, v4}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setSender(J)V

    .line 33
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 34
    invoke-virtual {v1, v3, v4}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setReceiver(J)V

    .line 35
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 36
    invoke-virtual {v1, v3}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setSenderType(I)V

    .line 37
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 38
    invoke-virtual {v1, v3}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setReceiverType(I)V

    .line 39
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 40
    invoke-virtual {v1, v3, v4}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setSpeechTime(J)V

    .line 41
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 42
    :cond_1
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    :goto_2
    invoke-virtual {v1, v3}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setUname(Ljava/lang/String;)V

    .line 44
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    .line 45
    :cond_2
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 46
    :goto_3
    invoke-virtual {v1, v3}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setAccount(Ljava/lang/String;)V

    .line 47
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 48
    invoke-virtual {v1, v3, v4}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setGid(J)V

    move-object/from16 v3, p2

    .line 49
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    move-object/from16 v3, v16

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    move-object/from16 v16, v3

    move-object v3, v4

    .line 50
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 51
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 52
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 53
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    .line 54
    throw v0
.end method

.method public b(J)Lcom/ifengyu/talk/models/HistoryMsgModel;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "select * from history_msg where id = ?"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/q0;->c(IJ)V

    .line 3
    iget-object v0, v1, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 4
    iget-object v0, v1, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 5
    invoke-static {v2, v0}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "msg_type"

    .line 6
    invoke-static {v2, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "body"

    .line 7
    invoke-static {v2, v6}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "msg_time"

    .line 8
    invoke-static {v2, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sender"

    .line 9
    invoke-static {v2, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "receiver"

    .line 10
    invoke-static {v2, v9}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sender_type"

    .line 11
    invoke-static {v2, v10}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "receiver_type"

    .line 12
    invoke-static {v2, v11}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "speech_time"

    .line 13
    invoke-static {v2, v12}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "u_name"

    .line 14
    invoke-static {v2, v13}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "account"

    .line 15
    invoke-static {v2, v14}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "gid"

    .line 16
    invoke-static {v2, v15}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 17
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 18
    new-instance v4, Lcom/ifengyu/talk/models/HistoryMsgModel;

    invoke-direct {v4}, Lcom/ifengyu/talk/models/HistoryMsgModel;-><init>()V

    .line 19
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 20
    invoke-virtual {v4, v0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setId(J)V

    .line 21
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 22
    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setMsgType(I)V

    .line 23
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_0
    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBody(Ljava/lang/String;)V

    .line 26
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 27
    invoke-virtual {v4, v0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setMsgTime(J)V

    .line 28
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 29
    invoke-virtual {v4, v0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setSender(J)V

    .line 30
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 31
    invoke-virtual {v4, v0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setReceiver(J)V

    .line 32
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 33
    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setSenderType(I)V

    .line 34
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 35
    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setReceiverType(I)V

    .line 36
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 37
    invoke-virtual {v4, v0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setSpeechTime(J)V

    .line 38
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_1
    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setUname(Ljava/lang/String;)V

    .line 41
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 42
    :cond_2
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_2
    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setAccount(Ljava/lang/String;)V

    .line 44
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 45
    invoke-virtual {v4, v0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setGid(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 46
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 47
    invoke-virtual {v3}, Landroidx/room/q0;->k()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 49
    invoke-virtual {v3}, Landroidx/room/q0;->k()V

    .line 50
    throw v0
.end method

.method public c()Lcom/ifengyu/talk/models/HistoryMsgModel;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "select * from history_msg order by msg_time desc limit 1"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 3
    iget-object v0, v1, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 4
    invoke-static {v2, v0}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "msg_type"

    .line 5
    invoke-static {v2, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "body"

    .line 6
    invoke-static {v2, v6}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "msg_time"

    .line 7
    invoke-static {v2, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sender"

    .line 8
    invoke-static {v2, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "receiver"

    .line 9
    invoke-static {v2, v9}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sender_type"

    .line 10
    invoke-static {v2, v10}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "receiver_type"

    .line 11
    invoke-static {v2, v11}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "speech_time"

    .line 12
    invoke-static {v2, v12}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "u_name"

    .line 13
    invoke-static {v2, v13}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "account"

    .line 14
    invoke-static {v2, v14}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "gid"

    .line 15
    invoke-static {v2, v15}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 16
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 17
    new-instance v4, Lcom/ifengyu/talk/models/HistoryMsgModel;

    invoke-direct {v4}, Lcom/ifengyu/talk/models/HistoryMsgModel;-><init>()V

    .line 18
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 19
    invoke-virtual {v4, v0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setId(J)V

    .line 20
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 21
    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setMsgType(I)V

    .line 22
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_0
    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBody(Ljava/lang/String;)V

    .line 25
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 26
    invoke-virtual {v4, v0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setMsgTime(J)V

    .line 27
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 28
    invoke-virtual {v4, v0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setSender(J)V

    .line 29
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 30
    invoke-virtual {v4, v0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setReceiver(J)V

    .line 31
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 32
    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setSenderType(I)V

    .line 33
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 34
    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setReceiverType(I)V

    .line 35
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 36
    invoke-virtual {v4, v0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setSpeechTime(J)V

    .line 37
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 38
    :cond_1
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_1
    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setUname(Ljava/lang/String;)V

    .line 40
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 41
    :cond_2
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_2
    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setAccount(Ljava/lang/String;)V

    .line 43
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 44
    invoke-virtual {v4, v0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setGid(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 45
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 46
    invoke-virtual {v3}, Landroidx/room/q0;->k()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 47
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 48
    invoke-virtual {v3}, Landroidx/room/q0;->k()V

    .line 49
    throw v0
.end method

.method public d(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/models/HistoryMsgModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->b:Landroidx/room/c0;

    invoke-virtual {v0, p1}, Landroidx/room/c0;->j(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method

.method public e(Lcom/ifengyu/talk/models/HistoryMsgModel;)Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->b:Landroidx/room/c0;

    invoke-virtual {v0, p1}, Landroidx/room/c0;->i(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 7
    throw p1
.end method

.method public f(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/b;->c:Landroidx/room/t0;

    invoke-virtual {v0}, Landroidx/room/t0;->a()La/g/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1, p2}, La/g/a/d;->c(IJ)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 5
    :try_start_0
    invoke-interface {v0}, La/g/a/f;->q()I

    .line 6
    iget-object p1, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/talk/database/a/b;->c:Landroidx/room/t0;

    invoke-virtual {p1, v0}, Landroidx/room/t0;->f(La/g/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lcom/ifengyu/talk/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->g()V

    .line 10
    iget-object p2, p0, Lcom/ifengyu/talk/database/a/b;->c:Landroidx/room/t0;

    invoke-virtual {p2, v0}, Landroidx/room/t0;->f(La/g/a/f;)V

    .line 11
    throw p1
.end method
