.class public abstract Lcom/ifengyu/talk/database/TalkDatabase;
.super Landroidx/room/RoomDatabase;
.source "TalkDatabase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/ifengyu/talk/models/RecentTalkModel;,
        Lcom/ifengyu/talk/models/HistoryMsgModel;
    }
    exportSchema = false
    version = 0x1
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Lcom/ifengyu/library/utils/f;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "TalkDatabase"

.field private static n:Ljava/lang/String;

.field private static volatile o:Lcom/ifengyu/talk/database/TalkDatabase;

.field private static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/library/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "talk_%s.db"

    goto :goto_0

    :cond_0
    const-string v0, "talk_test_%s.db"

    :goto_0
    sput-object v0, Lcom/ifengyu/talk/database/TalkDatabase;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method private static B(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/talk/database/TalkDatabase;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/talk/database/TalkDatabase;

    invoke-static {p0, v0, p1}, Landroidx/room/n0;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$a;->b()Landroidx/room/RoomDatabase$a;

    .line 3
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$a;->d()Landroidx/room/RoomDatabase$a;

    .line 4
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$a;->c()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/talk/database/TalkDatabase;

    return-object p0
.end method

.method public static D()Lcom/ifengyu/talk/database/TalkDatabase;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/talk/database/TalkDatabase;->E(Landroid/content/Context;)Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static E(Landroid/content/Context;)Lcom/ifengyu/talk/database/TalkDatabase;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/talk/database/TalkDatabase;->o:Lcom/ifengyu/talk/database/TalkDatabase;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/ifengyu/talk/database/TalkDatabase;->p:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ifengyu/talk/database/TalkDatabase;->G(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object p0, Lcom/ifengyu/talk/database/TalkDatabase;->o:Lcom/ifengyu/talk/database/TalkDatabase;

    return-object p0
.end method

.method public static G(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1
    sget-object v0, Lcom/ifengyu/talk/database/TalkDatabase;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sput-object p1, Lcom/ifengyu/talk/database/TalkDatabase;->p:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/ifengyu/talk/database/TalkDatabase;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database init, loginUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/ifengyu/talk/database/TalkDatabase;->n:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lcom/ifengyu/talk/database/TalkDatabase;->B(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object p0

    sput-object p0, Lcom/ifengyu/talk/database/TalkDatabase;->o:Lcom/ifengyu/talk/database/TalkDatabase;

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
.method public abstract C()Lcom/ifengyu/talk/database/a/a;
.end method

.method public abstract F()Lcom/ifengyu/talk/database/a/c;
.end method
