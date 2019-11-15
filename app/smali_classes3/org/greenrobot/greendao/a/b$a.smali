.class Lorg/greenrobot/greendao/a/b$a;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "DatabaseOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/greenrobot/greendao/a/b;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/a/b;Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1

    iput-object p1, p0, Lorg/greenrobot/greendao/a/b$a;->a:Lorg/greenrobot/greendao/a/b;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V

    if-eqz p5, :cond_0

    invoke-static {p2}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/a/a;
    .locals 1

    new-instance v0, Lorg/greenrobot/greendao/a/d;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/a/d;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;)V

    return-object v0
.end method
