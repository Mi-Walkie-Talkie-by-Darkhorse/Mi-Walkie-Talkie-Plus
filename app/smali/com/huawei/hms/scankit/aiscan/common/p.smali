.class public Lcom/huawei/hms/scankit/aiscan/common/p;
.super Ljava/lang/Object;
.source "Patch.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/huawei/hms/scankit/aiscan/common/p;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/huawei/hms/scankit/p/ob;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/ob;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/p;->a:Lcom/huawei/hms/scankit/p/ob;

    .line 3
    iput p2, p0, Lcom/huawei/hms/scankit/aiscan/common/p;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/aiscan/common/p;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/huawei/hms/scankit/aiscan/common/p;->a:Lcom/huawei/hms/scankit/p/ob;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v0

    neg-float v0, v0

    iget-object p1, p1, Lcom/huawei/hms/scankit/aiscan/common/p;->a:Lcom/huawei/hms/scankit/p/ob;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result p1

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/p;->a:Lcom/huawei/hms/scankit/p/ob;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result p1

    neg-float p1, p1

    iget-object v1, p0, Lcom/huawei/hms/scankit/aiscan/common/p;->a:Lcom/huawei/hms/scankit/p/ob;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result v1

    add-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/huawei/hms/scankit/aiscan/common/p;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/aiscan/common/p;->a(Lcom/huawei/hms/scankit/aiscan/common/p;)I

    move-result p1

    return p1
.end method
