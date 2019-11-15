.class Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper$DBOpenHelperHolder;
.super Ljava/lang/Object;
.source "DBOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBOpenHelperHolder"
.end annotation


# static fields
.field static holder:Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper$DBOpenHelperHolder;->holder:Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
