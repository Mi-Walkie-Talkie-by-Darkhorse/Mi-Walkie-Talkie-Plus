.class public abstract Lcom/ifengyu/im/DB/dao/DaoMaster$OpenHelper;
.super Lorg/greenrobot/greendao/a/b;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/DB/dao/DaoMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/greendao/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/greenrobot/greendao/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Lorg/greenrobot/greendao/a/a;)V
    .locals 2

    const-string v0, "greenDAO"

    const-string v1, "Creating tables for schema version 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/im/DB/dao/DaoMaster;->createAllTables(Lorg/greenrobot/greendao/a/a;Z)V

    return-void
.end method
