.class public final Lcom/ifengyu/intercom/database/a/b;
.super Ljava/lang/Object;
.source "ChannelDao_Impl.java"

# interfaces
.implements Lcom/ifengyu/intercom/database/a/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c0<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/database/a/b;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/database/a/b$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/b$a;-><init>(Lcom/ifengyu/intercom/database/a/b;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/a/b;->b:Landroidx/room/c0;

    return-void
.end method

.method public static c()Ljava/util/List;
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
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/b;->b:Landroidx/room/c0;

    invoke-virtual {v0, p1}, Landroidx/room/c0;->j(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method

.method public b(Ljava/lang/Long;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "select * from channel where config_id = ?"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v3

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v3, v2}, Landroidx/room/q0;->e(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/q0;->c(IJ)V

    .line 4
    :goto_0
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 5
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/b;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 6
    invoke-static {v2, v0}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "config_id"

    .line 7
    invoke-static {v2, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "channel_seq"

    .line 8
    invoke-static {v2, v6}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "receive_freq"

    .line 9
    invoke-static {v2, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "send_freq"

    .line 10
    invoke-static {v2, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "receive_tone_type"

    .line 11
    invoke-static {v2, v9}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "receive_tone_value"

    .line 12
    invoke-static {v2, v10}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "send_tone_type"

    .line 13
    invoke-static {v2, v11}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "send_tone_value"

    .line 14
    invoke-static {v2, v12}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "channel_type"

    .line 15
    invoke-static {v2, v13}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "channel_name"

    .line 16
    invoke-static {v2, v14}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 17
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    new-instance v4, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-direct {v4}, Lcom/ifengyu/intercom/models/ChannelModel;-><init>()V

    .line 20
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_1

    move/from16 v17, v0

    const/4 v0, 0x0

    goto :goto_2

    .line 21
    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 v17, v0

    move-object/from16 v0, v16

    .line 22
    :goto_2
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setId(Ljava/lang/Long;)V

    .line 23
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    .line 24
    :cond_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 25
    :goto_3
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setConfigId(Ljava/lang/Long;)V

    .line 26
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 27
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelSeq(I)V

    .line 28
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 29
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveFreq(I)V

    .line 30
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 31
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendFreq(I)V

    .line 32
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 33
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneType(I)V

    .line 34
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 35
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneValue(I)V

    .line 36
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 37
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneType(I)V

    .line 38
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 39
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneValue(I)V

    .line 40
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 41
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelType(I)V

    .line 42
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_4

    .line 43
    :cond_3
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_4
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelName(Ljava/lang/String;)V

    .line 45
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, v17

    goto/16 :goto_1

    .line 46
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 47
    invoke-virtual {v3}, Landroidx/room/q0;->k()V

    return-object v15

    :catchall_0
    move-exception v0

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 49
    invoke-virtual {v3}, Landroidx/room/q0;->k()V

    .line 50
    throw v0
.end method
