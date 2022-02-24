.class Lcom/ifengyu/intercom/lite/f/d$a;
.super Landroidx/room/c;
.source "ConfigFileDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/f/d;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/f/d;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(La/g/a/f;Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->bindLong(IJ)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->bindString(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getFrom()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getCreateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 12
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getUpdateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic a(La/g/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/lite/f/d$a;->a(La/g/a/f;Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `config_file` (`id`,`name`,`from`,`create_time`,`update_time`) VALUES (?,?,?,?,?)"

    return-object v0
.end method
