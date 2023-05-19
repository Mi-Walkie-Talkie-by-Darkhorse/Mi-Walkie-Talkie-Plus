.class Lb/c/a/e/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field static final e:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private a:Lb/c/a/e/f;

.field private b:Lb/c/a/e/f;

.field private c:Lb/c/a/e/f;

.field private d:Lb/c/a/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lb/c/a/e/d;->e:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lb/c/a/a;->h()Lb/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/c/a/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/c/a/e/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "okgo.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p1

    .line 2
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 3
    new-instance v1, Lb/c/a/e/f;

    const-string v2, "cache"

    invoke-direct {v1, v2}, Lb/c/a/e/f;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lb/c/a/e/d;->a:Lb/c/a/e/f;

    .line 4
    new-instance v1, Lb/c/a/e/f;

    const-string v2, "cookie"

    invoke-direct {v1, v2}, Lb/c/a/e/f;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lb/c/a/e/d;->b:Lb/c/a/e/f;

    .line 5
    new-instance v1, Lb/c/a/e/f;

    const-string v4, "download"

    invoke-direct {v1, v4}, Lb/c/a/e/f;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lb/c/a/e/d;->c:Lb/c/a/e/f;

    .line 6
    new-instance v1, Lb/c/a/e/f;

    const-string v4, "upload"

    invoke-direct {v1, v4}, Lb/c/a/e/f;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lb/c/a/e/d;->d:Lb/c/a/e/f;

    .line 7
    iget-object v1, v0, Lb/c/a/e/d;->a:Lb/c/a/e/f;

    new-instance v4, Lb/c/a/e/c;

    const-string v5, "key"

    const-string v6, "VARCHAR"

    invoke-direct {v4, v5, v6, v3, v3}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v4}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v4, Lb/c/a/e/c;

    const-string v5, "localExpire"

    const-string v7, "INTEGER"

    invoke-direct {v4, v5, v7}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v4}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v4, Lb/c/a/e/c;

    const-string v5, "head"

    const-string v8, "BLOB"

    invoke-direct {v4, v5, v8}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v4}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v4, Lb/c/a/e/c;

    const-string v5, "data"

    invoke-direct {v4, v5, v8}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v4}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    .line 11
    iget-object v1, v0, Lb/c/a/e/d;->b:Lb/c/a/e/f;

    new-instance v4, Lb/c/a/e/c;

    const-string v5, "host"

    invoke-direct {v4, v5, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v4, Lb/c/a/e/c;

    const-string v9, "name"

    invoke-direct {v4, v9, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v4}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v4, Lb/c/a/e/c;

    const-string v10, "domain"

    invoke-direct {v4, v10, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v4}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v4, Lb/c/a/e/c;

    invoke-direct {v4, v2, v8}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v4}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    filled-new-array {v5, v9, v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lb/c/a/e/c;-><init>([Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    .line 16
    iget-object v1, v0, Lb/c/a/e/d;->c:Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    const-string v4, "tag"

    invoke-direct {v2, v4, v6, v3, v3}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    const-string v5, "url"

    invoke-direct {v2, v5, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    const-string v9, "folder"

    invoke-direct {v2, v9, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    const-string v10, "filePath"

    invoke-direct {v2, v10, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    const-string v11, "fileName"

    invoke-direct {v2, v11, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    const-string v12, "fraction"

    invoke-direct {v2, v12, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    const-string v13, "totalSize"

    invoke-direct {v2, v13, v7}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    const-string v14, "currentSize"

    invoke-direct {v2, v14, v7}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    const-string v15, "status"

    invoke-direct {v2, v15, v7}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    const-string v3, "priority"

    invoke-direct {v2, v3, v7}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    move-object/from16 p1, v3

    const-string v3, "date"

    invoke-direct {v2, v3, v7}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    move-object/from16 v16, v3

    const-string v3, "request"

    invoke-direct {v2, v3, v8}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    move-object/from16 v17, v3

    const-string v3, "extra1"

    invoke-direct {v2, v3, v8}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    move-object/from16 v18, v3

    const-string v3, "extra2"

    invoke-direct {v2, v3, v8}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    move-object/from16 v19, v3

    const-string v3, "extra3"

    invoke-direct {v2, v3, v8}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    .line 31
    iget-object v1, v0, Lb/c/a/e/d;->d:Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v6, v3, v3}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    invoke-direct {v2, v5, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    invoke-direct {v2, v9, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    invoke-direct {v2, v10, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    invoke-direct {v2, v11, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    invoke-direct {v2, v12, v6}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    invoke-direct {v2, v13, v7}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    invoke-direct {v2, v14, v7}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    invoke-direct {v2, v15, v7}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v7}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    move-object/from16 v3, v16

    invoke-direct {v2, v3, v7}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    move-object/from16 v3, v17

    invoke-direct {v2, v3, v8}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    move-object/from16 v3, v18

    invoke-direct {v2, v3, v8}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    move-object/from16 v3, v19

    invoke-direct {v2, v3, v8}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    new-instance v2, Lb/c/a/e/c;

    const-string v3, "extra3"

    invoke-direct {v2, v3, v8}, Lb/c/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v2}, Lb/c/a/e/f;->a(Lb/c/a/e/c;)Lb/c/a/e/f;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/e/d;->a:Lb/c/a/e/f;

    invoke-virtual {v0}, Lb/c/a/e/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lb/c/a/e/d;->b:Lb/c/a/e/f;

    invoke-virtual {v0}, Lb/c/a/e/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lb/c/a/e/d;->c:Lb/c/a/e/f;

    invoke-virtual {v0}, Lb/c/a/e/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lb/c/a/e/d;->d:Lb/c/a/e/f;

    invoke-virtual {v0}, Lb/c/a/e/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lb/c/a/e/d;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lb/c/a/e/d;->a:Lb/c/a/e/f;

    invoke-static {p1, p2}, Lb/c/a/e/e;->a(Landroid/database/sqlite/SQLiteDatabase;Lb/c/a/e/f;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p2, p0, Lb/c/a/e/d;->b:Lb/c/a/e/f;

    invoke-static {p1, p2}, Lb/c/a/e/e;->a(Landroid/database/sqlite/SQLiteDatabase;Lb/c/a/e/f;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "DROP TABLE IF EXISTS cookie"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    :cond_1
    iget-object p2, p0, Lb/c/a/e/d;->c:Lb/c/a/e/f;

    invoke-static {p1, p2}, Lb/c/a/e/e;->a(Landroid/database/sqlite/SQLiteDatabase;Lb/c/a/e/f;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DROP TABLE IF EXISTS download"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    :cond_2
    iget-object p2, p0, Lb/c/a/e/d;->d:Lb/c/a/e/f;

    invoke-static {p1, p2}, Lb/c/a/e/e;->a(Landroid/database/sqlite/SQLiteDatabase;Lb/c/a/e/f;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "DROP TABLE IF EXISTS upload"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    :cond_3
    invoke-virtual {p0, p1}, Lb/c/a/e/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
