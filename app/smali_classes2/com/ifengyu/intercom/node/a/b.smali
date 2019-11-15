.class public Lcom/ifengyu/intercom/node/a/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ConnConfigsDBHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "connections.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "CREATE TABLE connConfigs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name STRING NOT NULL,btAddress STRING NOT NULL,connectionEnabled INTEGER NOT NULL,nodeId TEXT, UNIQUE(btAddress) ON CONFLICT REPLACE)"

    iput-object v0, p0, Lcom/ifengyu/intercom/node/a/b;->b:Ljava/lang/String;

    const-string v0, "CREATE TABLE connConfigs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name STRING NOT NULL,btAddress STRING NOT NULL,connectionEnabled INTEGER NOT NULL,nodeId TEXT,deviceType INTEGER DEFAULT 1, deviceColor INTEGER DEFAULT 0, UNIQUE(btAddress) ON CONFLICT REPLACE)"

    iput-object v0, p0, Lcom/ifengyu/intercom/node/a/b;->c:Ljava/lang/String;

    const-string v0, "ALTER TABLE connConfigs ADD deviceType INTEGER DEFAULT 1"

    iput-object v0, p0, Lcom/ifengyu/intercom/node/a/b;->d:Ljava/lang/String;

    const-string v0, "ALTER TABLE connConfigs ADD deviceColor INTEGER DEFAULT 0"

    iput-object v0, p0, Lcom/ifengyu/intercom/node/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ifengyu/intercom/node/a/b;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/node/a/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/a/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    sget-object v0, Lcom/ifengyu/intercom/node/a/b;->a:Ljava/lang/String;

    const-string v1, "ConnConfigsDBHelper onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "CREATE TABLE connConfigs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name STRING NOT NULL,btAddress STRING NOT NULL,connectionEnabled INTEGER NOT NULL,nodeId TEXT,deviceType INTEGER DEFAULT 1, deviceColor INTEGER DEFAULT 0, UNIQUE(btAddress) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ifengyu/intercom/node/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/node/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnConfigsDBHelper onUpgrade,oldVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "ALTER TABLE connConfigs ADD deviceType INTEGER DEFAULT 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_1
    const-string v0, "ALTER TABLE connConfigs ADD deviceColor INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
