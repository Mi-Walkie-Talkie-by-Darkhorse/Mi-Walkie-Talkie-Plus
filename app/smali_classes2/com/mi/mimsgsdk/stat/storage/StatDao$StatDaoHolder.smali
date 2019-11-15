.class Lcom/mi/mimsgsdk/stat/storage/StatDao$StatDaoHolder;
.super Ljava/lang/Object;
.source "StatDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/stat/storage/StatDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatDaoHolder"
.end annotation


# static fields
.field static holder:Lcom/mi/mimsgsdk/stat/storage/StatDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/stat/storage/StatDao;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/stat/storage/StatDao;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatDaoHolder;->holder:Lcom/mi/mimsgsdk/stat/storage/StatDao;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
