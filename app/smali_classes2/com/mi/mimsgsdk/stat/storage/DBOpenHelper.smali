.class public Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper$DBOpenHelperHolder;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "mimsg"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mimsg"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static getInstance()Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper$DBOpenHelperHolder;->holder:Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-static {p1}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
