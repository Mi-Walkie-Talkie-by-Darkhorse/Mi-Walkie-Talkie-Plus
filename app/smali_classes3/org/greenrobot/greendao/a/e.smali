.class public Lorg/greenrobot/greendao/a/e;
.super Ljava/lang/Object;
.source "EncryptedDatabaseStatement.java"

# interfaces
.implements Lorg/greenrobot/greendao/a/c;


# instance fields
.field private final a:Lnet/sqlcipher/database/SQLiteStatement;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/database/SQLiteStatement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/a/e;->a:Lnet/sqlcipher/database/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a/e;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->execute()V

    return-void
.end method

.method public a(ID)V
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/a/e;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public a(IJ)V
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/a/e;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a/e;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Lnet/sqlcipher/database/SQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/a/e;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/a/e;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a/e;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->clearBindings()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a/e;->a:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a/e;->a:Lnet/sqlcipher/database/SQLiteStatement;

    return-object v0
.end method
