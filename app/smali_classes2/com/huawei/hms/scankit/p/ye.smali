.class public Lcom/huawei/hms/scankit/p/ye;
.super Ljava/lang/Object;
.source "ParticleScale.java"

# interfaces
.implements Lcom/huawei/hms/scankit/p/we;


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/huawei/hms/scankit/p/ye;->b:F

    .line 3
    iput p2, p0, Lcom/huawei/hms/scankit/p/ye;->a:F

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/qe;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/ye;->a:F

    iget v1, p0, Lcom/huawei/hms/scankit/p/ye;->b:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v1

    .line 2
    invoke-static {v0}, Lcom/huawei/hms/scankit/p/ze;->a(F)F

    move-result v0

    iget v1, p0, Lcom/huawei/hms/scankit/p/ye;->b:F

    add-float/2addr v0, v1

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/qe;->b(F)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/qe;->a(F)V

    return-void
.end method
