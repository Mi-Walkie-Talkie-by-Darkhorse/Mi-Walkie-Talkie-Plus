.class public Lcom/huawei/hms/scankit/aiscan/common/g;
.super Ljava/lang/Object;
.source "DetectorResult.java"


# instance fields
.field private final a:Lcom/huawei/hms/scankit/p/bb;

.field private final b:[Lcom/huawei/hms/scankit/aiscan/common/z;

.field private c:[Lcom/huawei/hms/scankit/aiscan/common/z;

.field private d:F


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/bb;[Lcom/huawei/hms/scankit/aiscan/common/z;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/g;->c:[Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/g;->a:Lcom/huawei/hms/scankit/p/bb;

    .line 4
    iput-object p2, p0, Lcom/huawei/hms/scankit/aiscan/common/g;->b:[Lcom/huawei/hms/scankit/aiscan/common/z;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/scankit/p/bb;[Lcom/huawei/hms/scankit/aiscan/common/z;[Lcom/huawei/hms/scankit/aiscan/common/z;F)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/g;->c:[Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 7
    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/g;->a:Lcom/huawei/hms/scankit/p/bb;

    .line 8
    iput-object p2, p0, Lcom/huawei/hms/scankit/aiscan/common/g;->b:[Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 9
    iput-object p3, p0, Lcom/huawei/hms/scankit/aiscan/common/g;->c:[Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 10
    iput p4, p0, Lcom/huawei/hms/scankit/aiscan/common/g;->d:F

    return-void
.end method


# virtual methods
.method public final a()Lcom/huawei/hms/scankit/p/bb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/g;->a:Lcom/huawei/hms/scankit/p/bb;

    return-object v0
.end method

.method public b()[Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/g;->c:[Lcom/huawei/hms/scankit/aiscan/common/z;

    return-object v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/aiscan/common/g;->d:F

    return v0
.end method

.method public final d()[Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/g;->b:[Lcom/huawei/hms/scankit/aiscan/common/z;

    return-object v0
.end method
