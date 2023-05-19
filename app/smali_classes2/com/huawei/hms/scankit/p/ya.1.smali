.class public Lcom/huawei/hms/scankit/p/ya;
.super Ljava/lang/Object;
.source "CameraExposureData.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>(IIIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/huawei/hms/scankit/p/ya;->a:I

    .line 3
    iput p2, p0, Lcom/huawei/hms/scankit/p/ya;->b:I

    .line 4
    iput p3, p0, Lcom/huawei/hms/scankit/p/ya;->c:I

    .line 5
    iput p4, p0, Lcom/huawei/hms/scankit/p/ya;->d:F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/ya;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/ya;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/ya;->b:I

    return v0
.end method
