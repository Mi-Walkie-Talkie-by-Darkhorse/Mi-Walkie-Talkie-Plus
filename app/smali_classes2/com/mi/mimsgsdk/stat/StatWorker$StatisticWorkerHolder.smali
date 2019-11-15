.class Lcom/mi/mimsgsdk/stat/StatWorker$StatisticWorkerHolder;
.super Ljava/lang/Object;
.source "StatWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/stat/StatWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatisticWorkerHolder"
.end annotation


# static fields
.field public static holder:Lcom/mi/mimsgsdk/stat/StatWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/stat/StatWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/stat/StatWorker;-><init>(Lcom/mi/mimsgsdk/stat/StatWorker$1;)V

    sput-object v0, Lcom/mi/mimsgsdk/stat/StatWorker$StatisticWorkerHolder;->holder:Lcom/mi/mimsgsdk/stat/StatWorker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
