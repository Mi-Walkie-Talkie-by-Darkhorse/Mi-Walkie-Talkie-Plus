.class Lcom/ifengyu/talk/database/a/b$a;
.super Landroidx/room/c0;
.source "HistoryMsgDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/talk/database/a/b;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c0<",
        "Lcom/ifengyu/talk/models/HistoryMsgModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/talk/database/a/b;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/c0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `history_msg` (`id`,`msg_type`,`body`,`msg_time`,`sender`,`receiver`,`sender_type`,`receiver_type`,`speech_time`,`u_name`,`account`,`gid`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(La/g/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/talk/models/HistoryMsgModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/talk/database/a/b$a;->k(La/g/a/f;Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    return-void
.end method

.method public k(La/g/a/f;Lcom/ifengyu/talk/models/HistoryMsgModel;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, La/g/a/d;->c(IJ)V

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, La/g/a/d;->c(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBody()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/4 v0, 0x5

    .line 7
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getSender()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/4 v0, 0x6

    .line 8
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getReceiver()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/4 v0, 0x7

    .line 9
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getSenderType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getReceiverType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0x9

    .line 11
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getSpeechTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    .line 12
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getUname()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_1

    .line 13
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getUname()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    .line 15
    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getAccount()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_2

    .line 16
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    :goto_2
    const/16 v0, 0xc

    .line 18
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getGid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    return-void
.end method
