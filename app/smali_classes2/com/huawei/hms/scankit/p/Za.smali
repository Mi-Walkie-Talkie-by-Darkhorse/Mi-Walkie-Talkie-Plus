.class public abstract Lcom/huawei/hms/scankit/p/Za;
.super Ljava/lang/Object;
.source "Binarizer.java"


# instance fields
.field private final a:Lcom/huawei/hms/scankit/aiscan/common/m;


# direct methods
.method protected constructor <init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Za;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/huawei/hms/scankit/aiscan/common/m;)Lcom/huawei/hms/scankit/p/Za;
.end method

.method public abstract a(ILcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/ab;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation
.end method

.method public abstract a()Lcom/huawei/hms/scankit/p/bb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Za;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v0

    return v0
.end method

.method public final c()Lcom/huawei/hms/scankit/aiscan/common/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Za;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Za;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v0

    return v0
.end method
