.class Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;
.super Landroidx/room/p0$a;
.source "TalkDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/talk/database/TalkDatabase_Impl;->f(Landroidx/room/z;)La/g/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/ifengyu/talk/database/TalkDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;->b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/p0$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(La/g/a/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `recent_talk` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `group_id` INTEGER, `group_name` TEXT, `group_avatar` TEXT, `update_time` INTEGER NOT NULL, `last_msg_json_str` TEXT)"

    .line 1
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_recent_talk_group_id` ON `recent_talk` (`group_id`)"

    .line 2
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `history_msg` (`id` INTEGER NOT NULL, `msg_type` INTEGER NOT NULL, `body` TEXT, `msg_time` INTEGER NOT NULL, `sender` INTEGER NOT NULL, `receiver` INTEGER NOT NULL, `sender_type` INTEGER NOT NULL, `receiver_type` INTEGER NOT NULL, `speech_time` INTEGER NOT NULL, `u_name` TEXT, `account` TEXT, `gid` INTEGER NOT NULL, PRIMARY KEY(`id`))"

    .line 3
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 4
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'1a2919491c37bcd09cd87483a6a02888\')"

    .line 5
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    return-void
.end method

.method public b(La/g/a/b;)V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS `recent_talk`"

    .line 1
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `history_msg`"

    .line 2
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;->b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;

    invoke-static {v0}, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->H(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;->b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;

    invoke-static {v1}, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->I(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;->b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;

    invoke-static {v2}, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->K(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$b;->b(La/g/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(La/g/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;->b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;

    invoke-static {v0}, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->L(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;->b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;

    invoke-static {v1}, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->M(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;->b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;

    invoke-static {v2}, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->N(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$b;->a(La/g/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(La/g/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;->b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;

    invoke-static {v0, p1}, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->O(Lcom/ifengyu/talk/database/TalkDatabase_Impl;La/g/a/b;)La/g/a/b;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;->b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;

    invoke-static {v0, p1}, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->P(Lcom/ifengyu/talk/database/TalkDatabase_Impl;La/g/a/b;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;->b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;

    invoke-static {v0}, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->Q(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;->b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;

    invoke-static {v1}, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->R(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;->b:Lcom/ifengyu/talk/database/TalkDatabase_Impl;

    invoke-static {v2}, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->J(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$b;->c(La/g/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(La/g/a/b;)V
    .locals 0

    return-void
.end method

.method public f(La/g/a/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/room/w0/c;->a(La/g/a/b;)V

    return-void
.end method

.method protected g(La/g/a/b;)Landroidx/room/p0$b;
    .locals 22

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Landroidx/room/w0/f$a;

    const-string v4, "id"

    const-string v5, "INTEGER"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Landroidx/room/w0/f$a;

    const-string v5, "group_id"

    const-string v6, "INTEGER"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "group_id"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Landroidx/room/w0/f$a;

    const-string v6, "group_name"

    const-string v7, "TEXT"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "group_name"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Landroidx/room/w0/f$a;

    const-string v7, "group_avatar"

    const-string v8, "TEXT"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "group_avatar"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Landroidx/room/w0/f$a;

    const-string v7, "update_time"

    const-string v8, "INTEGER"

    const/4 v9, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "update_time"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Landroidx/room/w0/f$a;

    const-string v7, "last_msg_json_str"

    const-string v8, "TEXT"

    const/4 v9, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "last_msg_json_str"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Ljava/util/HashSet;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 9
    new-instance v6, Ljava/util/HashSet;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 10
    new-instance v8, Landroidx/room/w0/f$d;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v9, "index_recent_talk_group_id"

    invoke-direct {v8, v9, v7, v4}, Landroidx/room/w0/f$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v4, Landroidx/room/w0/f;

    const-string v8, "recent_talk"

    invoke-direct {v4, v8, v1, v2, v6}, Landroidx/room/w0/f;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 12
    invoke-static {v0, v8}, Landroidx/room/w0/f;->a(La/g/a/b;Ljava/lang/String;)Landroidx/room/w0/f;

    move-result-object v1

    .line 13
    invoke-virtual {v4, v1}, Landroidx/room/w0/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "\n Found:\n"

    if-nez v2, :cond_0

    .line 14
    new-instance v0, Landroidx/room/p0$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recent_talk(com.ifengyu.talk.models.RecentTalkModel).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Landroidx/room/p0$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 15
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 16
    new-instance v2, Landroidx/room/w0/f$a;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v9, "id"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v2, Landroidx/room/w0/f$a;

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v16, "msg_type"

    const-string v17, "INTEGER"

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "msg_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v2, Landroidx/room/w0/f$a;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v9, "body"

    const-string v10, "TEXT"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "body"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Landroidx/room/w0/f$a;

    const/4 v11, 0x1

    const-string v9, "msg_time"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "msg_time"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v2, Landroidx/room/w0/f$a;

    const-string v9, "sender"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "sender"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v2, Landroidx/room/w0/f$a;

    const-string v9, "receiver"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "receiver"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v2, Landroidx/room/w0/f$a;

    const-string v9, "sender_type"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "sender_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v2, Landroidx/room/w0/f$a;

    const-string v9, "receiver_type"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "receiver_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v2, Landroidx/room/w0/f$a;

    const-string v9, "speech_time"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "speech_time"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v2, Landroidx/room/w0/f$a;

    const/4 v11, 0x0

    const-string v9, "u_name"

    const-string v10, "TEXT"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "u_name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v2, Landroidx/room/w0/f$a;

    const-string v9, "account"

    const-string v10, "TEXT"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "account"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v2, Landroidx/room/w0/f$a;

    const/4 v11, 0x1

    const-string v9, "gid"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/w0/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "gid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 29
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 30
    new-instance v4, Landroidx/room/w0/f;

    const-string v8, "history_msg"

    invoke-direct {v4, v8, v1, v2, v3}, Landroidx/room/w0/f;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 31
    invoke-static {v0, v8}, Landroidx/room/w0/f;->a(La/g/a/b;Ljava/lang/String;)Landroidx/room/w0/f;

    move-result-object v0

    .line 32
    invoke-virtual {v4, v0}, Landroidx/room/w0/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    new-instance v1, Landroidx/room/p0$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "history_msg(com.ifengyu.talk.models.HistoryMsgModel).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Landroidx/room/p0$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 34
    :cond_1
    new-instance v0, Landroidx/room/p0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Landroidx/room/p0$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
