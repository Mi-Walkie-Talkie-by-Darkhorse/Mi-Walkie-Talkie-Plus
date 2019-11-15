.class public Lcom/xiaomi/smack/util/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smack/util/g$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/channel/commonutils/misc/i;

.field private static b:I

.field private static final c:Ljava/lang/Object;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/smack/util/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String;

.field private static f:Lcom/xiaomi/push/providers/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/i;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/smack/util/g;->a:Lcom/xiaomi/channel/commonutils/misc/i;

    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/smack/util/g;->b:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/smack/util/g;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/util/g;->d:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Lcom/xiaomi/smack/util/g;->e:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/smack/util/g;->f:Lcom/xiaomi/push/providers/a;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method private static a(IJ)J
    .locals 5

    if-nez p0, :cond_0

    const/16 v0, 0xd

    :goto_0
    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/xiaomi/smack/util/g;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/smack/util/g;->c(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/xiaomi/smack/util/g;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JZJ)V
    .locals 11

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/smack/util/g;->b(Landroid/content/Context;)I

    move-result v4

    const/4 v0, -0x1

    if-eq v0, v4, :cond_0

    sget-object v9, Lcom/xiaomi/smack/util/g;->c:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/xiaomi/smack/util/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    new-instance v0, Lcom/xiaomi/smack/util/g$a;

    if-eqz p4, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-nez v4, :cond_3

    invoke-static {p0}, Lcom/xiaomi/smack/util/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-static {v4, p2, p3}, Lcom/xiaomi/smack/util/g;->a(IJ)J

    move-result-wide v7

    move-object v1, p1

    move-wide/from16 v2, p5

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/smack/util/g$a;-><init>(Ljava/lang/String;JIILjava/lang/String;J)V

    invoke-static {v0}, Lcom/xiaomi/smack/util/g;->a(Lcom/xiaomi/smack/util/g$a;)V

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    sget-object v0, Lcom/xiaomi/smack/util/g;->a:Lcom/xiaomi/channel/commonutils/misc/i;

    new-instance v1, Lcom/xiaomi/smack/util/h;

    invoke-direct {v1, p0}, Lcom/xiaomi/smack/util/h;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/channel/commonutils/misc/i;->a(Lcom/xiaomi/channel/commonutils/misc/i$b;J)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v6, ""

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/smack/util/g;->b(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private static a(Lcom/xiaomi/smack/util/g$a;)V
    .locals 6

    sget-object v0, Lcom/xiaomi/smack/util/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/util/g$a;

    invoke-virtual {v0, p0}, Lcom/xiaomi/smack/util/g$a;->a(Lcom/xiaomi/smack/util/g$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/xiaomi/smack/util/g$a;->f:J

    iget-wide v4, p0, Lcom/xiaomi/smack/util/g$a;->f:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/xiaomi/smack/util/g$a;->f:J

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/smack/util/g;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/xiaomi/smack/util/g;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/smack/util/g;->c(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/xiaomi/smack/util/g;->b:I

    :cond_0
    sget v0, Lcom/xiaomi/smack/util/g;->b:I

    return v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/xiaomi/smack/util/g;->d:Ljava/util/List;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/smack/util/g$a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/providers/a;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lcom/xiaomi/smack/util/g;->e(Landroid/content/Context;)Lcom/xiaomi/push/providers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/providers/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/util/g$a;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "package_name"

    iget-object v6, v0, Lcom/xiaomi/smack/util/g$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "message_ts"

    iget-wide v6, v0, Lcom/xiaomi/smack/util/g$a;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "network_type"

    iget v6, v0, Lcom/xiaomi/smack/util/g$a;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "bytes"

    iget-wide v6, v0, Lcom/xiaomi/smack/util/g$a;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "rcv"

    iget v6, v0, Lcom/xiaomi/smack/util/g$a;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "imsi"

    iget-object v0, v0, Lcom/xiaomi/smack/util/g$a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "traffic"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_0
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;)I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method private static declared-synchronized d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/xiaomi/smack/util/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/smack/util/g;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/smack/util/g;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/util/g;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/xiaomi/smack/util/g;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static e(Landroid/content/Context;)Lcom/xiaomi/push/providers/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/smack/util/g;->f:Lcom/xiaomi/push/providers/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/smack/util/g;->f:Lcom/xiaomi/push/providers/a;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/push/providers/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/providers/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/smack/util/g;->f:Lcom/xiaomi/push/providers/a;

    sget-object v0, Lcom/xiaomi/smack/util/g;->f:Lcom/xiaomi/push/providers/a;

    goto :goto_0
.end method
