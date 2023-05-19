.class public abstract Lcom/ifengyu/intercom/database/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppDatabase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/ifengyu/intercom/models/ConfigFileModel;,
        Lcom/ifengyu/intercom/models/ChannelModel;,
        Lcom/ifengyu/intercom/models/DeviceModel;,
        Lcom/ifengyu/intercom/models/NetDeviceModel;,
        Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;
    }
    exportSchema = false
    version = 0x6
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Lcom/ifengyu/library/utils/f;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "AppDatabase"

.field private static n:Ljava/lang/String;

.field private static volatile o:Lcom/ifengyu/intercom/database/AppDatabase;

.field private static p:Ljava/lang/String;

.field static final q:Landroidx/room/v0/a;

.field static final r:Landroidx/room/v0/a;

.field static final s:Landroidx/room/v0/a;

.field static final t:Landroidx/room/v0/a;

.field static final u:Landroidx/room/v0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/library/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "intercom_%s.db"

    goto :goto_0

    :cond_0
    const-string v0, "intercom_test_%s.db"

    :goto_0
    sput-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->n:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/database/AppDatabase$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/database/AppDatabase$a;-><init>(II)V

    sput-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->q:Landroidx/room/v0/a;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/database/AppDatabase$b;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/database/AppDatabase$b;-><init>(II)V

    sput-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->r:Landroidx/room/v0/a;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/database/AppDatabase$c;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/database/AppDatabase$c;-><init>(II)V

    sput-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->s:Landroidx/room/v0/a;

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/database/AppDatabase$d;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/database/AppDatabase$d;-><init>(II)V

    sput-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->t:Landroidx/room/v0/a;

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/database/AppDatabase$e;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/database/AppDatabase$e;-><init>(II)V

    sput-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->u:Landroidx/room/v0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method private static B(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/intercom/database/AppDatabase;
    .locals 2

    .line 1
    const-class v0, Lcom/ifengyu/intercom/database/AppDatabase;

    invoke-static {p0, v0, p1}, Landroidx/room/n0;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$a;->b()Landroidx/room/RoomDatabase$a;

    .line 3
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$a;->d()Landroidx/room/RoomDatabase$a;

    const/4 p1, 0x5

    new-array p1, p1, [Landroidx/room/v0/a;

    sget-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->q:Landroidx/room/v0/a;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->r:Landroidx/room/v0/a;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    sget-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->s:Landroidx/room/v0/a;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    sget-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->t:Landroidx/room/v0/a;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    sget-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->u:Landroidx/room/v0/a;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$a;->a([Landroidx/room/v0/a;)Landroidx/room/RoomDatabase$a;

    .line 5
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$a;->c()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/database/AppDatabase;

    return-object p0
.end method

.method public static F()Lcom/ifengyu/intercom/database/AppDatabase;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->o:Lcom/ifengyu/intercom/database/AppDatabase;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->p:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/database/AppDatabase;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/database/AppDatabase;->o:Lcom/ifengyu/intercom/database/AppDatabase;

    return-object p0
.end method

.method public static J(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sput-object p1, Lcom/ifengyu/intercom/database/AppDatabase;->p:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database init, loginUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/database/AppDatabase;->n:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lcom/ifengyu/intercom/database/AppDatabase;->B(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object p0

    sput-object p0, Lcom/ifengyu/intercom/database/AppDatabase;->o:Lcom/ifengyu/intercom/database/AppDatabase;

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Database init exception!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract C()Lcom/ifengyu/intercom/database/a/a;
.end method

.method public abstract D()Lcom/ifengyu/intercom/database/a/c;
.end method

.method public abstract E()Lcom/ifengyu/intercom/database/a/e;
.end method

.method public abstract H()Lcom/ifengyu/intercom/database/a/g;
.end method

.method public abstract I()Lcom/ifengyu/intercom/database/a/i;
.end method
