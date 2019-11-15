.class public abstract Lorg/greenrobot/greendao/a/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/a/b$a;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private encryptedHelper:Lorg/greenrobot/greendao/a/b$a;

.field private loadSQLCipherNativeLibs:Z

.field private final name:Ljava/lang/String;

.field private final version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/greenrobot/greendao/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/greendao/a/b;->loadSQLCipherNativeLibs:Z

    iput-object p1, p0, Lorg/greenrobot/greendao/a/b;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/greenrobot/greendao/a/b;->name:Ljava/lang/String;

    iput p4, p0, Lorg/greenrobot/greendao/a/b;->version:I

    return-void
.end method

.method private checkEncryptedHelper()Lorg/greenrobot/greendao/a/b$a;
    .locals 6

    iget-object v0, p0, Lorg/greenrobot/greendao/a/b;->encryptedHelper:Lorg/greenrobot/greendao/a/b$a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/greenrobot/greendao/a/b$a;

    iget-object v2, p0, Lorg/greenrobot/greendao/a/b;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/greenrobot/greendao/a/b;->name:Ljava/lang/String;

    iget v4, p0, Lorg/greenrobot/greendao/a/b;->version:I

    iget-boolean v5, p0, Lorg/greenrobot/greendao/a/b;->loadSQLCipherNativeLibs:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/a/b$a;-><init>(Lorg/greenrobot/greendao/a/b;Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lorg/greenrobot/greendao/a/b;->encryptedHelper:Lorg/greenrobot/greendao/a/b$a;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/a/b;->encryptedHelper:Lorg/greenrobot/greendao/a/b$a;

    return-object v0
.end method


# virtual methods
.method public getEncryptedReadableDb(Ljava/lang/String;)Lorg/greenrobot/greendao/a/a;
    .locals 2

    invoke-direct {p0}, Lorg/greenrobot/greendao/a/b;->checkEncryptedHelper()Lorg/greenrobot/greendao/a/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/a/b$a;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/a/b$a;->a(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedReadableDb([C)Lorg/greenrobot/greendao/a/a;
    .locals 2

    invoke-direct {p0}, Lorg/greenrobot/greendao/a/b;->checkEncryptedHelper()Lorg/greenrobot/greendao/a/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/a/b$a;->getReadableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/a/b$a;->a(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedWritableDb(Ljava/lang/String;)Lorg/greenrobot/greendao/a/a;
    .locals 2

    invoke-direct {p0}, Lorg/greenrobot/greendao/a/b;->checkEncryptedHelper()Lorg/greenrobot/greendao/a/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/a/b$a;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/a/b$a;->a(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedWritableDb([C)Lorg/greenrobot/greendao/a/a;
    .locals 2

    invoke-direct {p0}, Lorg/greenrobot/greendao/a/b;->checkEncryptedHelper()Lorg/greenrobot/greendao/a/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/a/b$a;->getWritableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/a/b$a;->a(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getReadableDb()Lorg/greenrobot/greendao/a/a;
    .locals 1

    invoke-virtual {p0}, Lorg/greenrobot/greendao/a/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a/b;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDb()Lorg/greenrobot/greendao/a/a;
    .locals 1

    invoke-virtual {p0}, Lorg/greenrobot/greendao/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a/b;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a/b;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a/b;->onCreate(Lorg/greenrobot/greendao/a/a;)V

    return-void
.end method

.method public onCreate(Lorg/greenrobot/greendao/a/a;)V
    .locals 0

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a/b;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a/b;->onOpen(Lorg/greenrobot/greendao/a/a;)V

    return-void
.end method

.method public onOpen(Lorg/greenrobot/greendao/a/a;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a/b;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/greenrobot/greendao/a/b;->onUpgrade(Lorg/greenrobot/greendao/a/a;II)V

    return-void
.end method

.method public onUpgrade(Lorg/greenrobot/greendao/a/a;II)V
    .locals 0

    return-void
.end method

.method public setLoadSQLCipherNativeLibs(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/greenrobot/greendao/a/b;->loadSQLCipherNativeLibs:Z

    return-void
.end method

.method protected wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/a/a;
    .locals 1

    new-instance v0, Lorg/greenrobot/greendao/a/f;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/a/f;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method
