.class public abstract Lcom/ifengyu/intercom/lite/database/LiteDatabase;
.super Landroidx/room/RoomDatabase;
.source "LiteDatabase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/ifengyu/intercom/lite/models/ConfigFileModel;,
        Lcom/ifengyu/intercom/lite/models/ChannelModel;,
        Lcom/ifengyu/intercom/lite/models/DeviceModel;
    }
    exportSchema = false
    version = 0x2
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Lcom/ifengyu/intercom/lite/database/a;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String; = "LiteDatabase"

.field private static k:Ljava/lang/String; = "intercom_%s.db"

.field private static volatile l:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

.field private static m:Ljava/lang/String;

.field static final n:Landroidx/room/q/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/database/LiteDatabase$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/lite/database/LiteDatabase$a;-><init>(II)V

    sput-object v0, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n:Landroidx/room/q/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->l:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->m:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->l:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;
    .locals 2

    .line 4
    const-class v0, Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    invoke-static {p0, v0, p1}, Landroidx/room/i;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$a;->a()Landroidx/room/RoomDatabase$a;

    const/4 p1, 0x1

    new-array p1, p1, [Landroidx/room/q/a;

    sget-object v0, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n:Landroidx/room/q/a;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$a;->a([Landroidx/room/q/a;)Landroidx/room/RoomDatabase$a;

    .line 7
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$a;->b()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sput-object p1, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->m:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database init, loginUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/a/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->k:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object p0

    sput-object p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->l:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Database init exception!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o()Lcom/ifengyu/intercom/lite/database/LiteDatabase;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract l()Lcom/ifengyu/intercom/lite/f/a;
.end method

.method public abstract m()Lcom/ifengyu/intercom/lite/f/c;
.end method

.method public abstract n()Lcom/ifengyu/intercom/lite/f/e;
.end method
