.class public interface abstract Lorg/greenrobot/greendao/database/DatabaseStatement;
.super Ljava/lang/Object;
.source "DatabaseStatement.java"


# virtual methods
.method public abstract bindBlob(I[B)V
.end method

.method public abstract bindDouble(ID)V
.end method

.method public abstract bindLong(IJ)V
.end method

.method public abstract bindNull(I)V
.end method

.method public abstract bindString(ILjava/lang/String;)V
.end method

.method public abstract clearBindings()V
.end method

.method public abstract close()V
.end method

.method public abstract execute()V
.end method

.method public abstract executeInsert()J
.end method

.method public abstract getRawStatement()Ljava/lang/Object;
.end method

.method public abstract simpleQueryForLong()J
.end method
