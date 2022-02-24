.class public interface abstract Lorg/greenrobot/greendao/database/Database;
.super Ljava/lang/Object;
.source "Database.java"


# virtual methods
.method public abstract beginTransaction()V
.end method

.method public abstract close()V
.end method

.method public abstract compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;
.end method

.method public abstract endTransaction()V
.end method

.method public abstract execSQL(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract getRawDatabase()Ljava/lang/Object;
.end method

.method public abstract inTransaction()Z
.end method

.method public abstract isDbLockedByCurrentThread()Z
.end method

.method public abstract rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract setTransactionSuccessful()V
.end method
