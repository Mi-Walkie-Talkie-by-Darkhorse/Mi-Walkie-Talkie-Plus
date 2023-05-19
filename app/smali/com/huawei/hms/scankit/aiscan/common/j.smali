.class public abstract Lcom/huawei/hms/scankit/aiscan/common/j;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static a:Lcom/huawei/hms/scankit/aiscan/common/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/f;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/aiscan/common/f;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/j;->a:Lcom/huawei/hms/scankit/aiscan/common/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/hms/scankit/aiscan/common/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/j;->a:Lcom/huawei/hms/scankit/aiscan/common/j;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/huawei/hms/scankit/p/bb;IIFFFFFFFFFFFFFFFF)Lcom/huawei/hms/scankit/p/bb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation
.end method

.method public abstract a(Lcom/huawei/hms/scankit/p/bb;IILcom/huawei/hms/scankit/aiscan/common/q;Z)Lcom/huawei/hms/scankit/p/bb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation
.end method
