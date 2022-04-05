.class public Lcom/ifengyu/intercom/node/q/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/q/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/q/b;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "connections.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string p1, "CREATE TABLE connConfigs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name STRING NOT NULL,btAddress STRING NOT NULL,connectionEnabled INTEGER NOT NULL,nodeId TEXT, UNIQUE(btAddress) ON CONFLICT REPLACE)"

    iput-object p1, p0, Lcom/ifengyu/intercom/node/q/b;->a:Ljava/lang/String;

    const-string p1, "CREATE TABLE connConfigs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name STRING NOT NULL,btAddress STRING NOT NULL,connectionEnabled INTEGER NOT NULL,nodeId TEXT,deviceType INTEGER DEFAULT 1, deviceColor INTEGER DEFAULT 0, UNIQUE(btAddress) ON CONFLICT REPLACE)"

    iput-object p1, p0, Lcom/ifengyu/intercom/node/q/b;->b:Ljava/lang/String;

    const-string p1, "ALTER TABLE connConfigs ADD deviceType INTEGER DEFAULT 1"

    iput-object p1, p0, Lcom/ifengyu/intercom/node/q/b;->c:Ljava/lang/String;

    const-string p1, "ALTER TABLE connConfigs ADD deviceColor INTEGER DEFAULT 0"

    iput-object p1, p0, Lcom/ifengyu/intercom/node/q/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ifengyu/intercom/node/q/b;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/node/q/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/q/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/node/q/b;->e:Ljava/lang/String;

    const-string v1, "ConnConfigsDBHelper onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "CREATE TABLE connConfigs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name STRING NOT NULL,btAddress STRING NOT NULL,connectionEnabled INTEGER NOT NULL,nodeId TEXT,deviceType INTEGER DEFAULT 1, deviceColor INTEGER DEFAULT 0, UNIQUE(btAddress) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/ifengyu/intercom/node/q/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/node/q/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnConfigsDBHelper onUpgrade,oldVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_0
    const-string p2, "ALTER TABLE connConfigs ADD deviceType INTEGER DEFAULT 1"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const-string p2, "ALTER TABLE connConfigs ADD deviceColor INTEGER DEFAULT 0"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
