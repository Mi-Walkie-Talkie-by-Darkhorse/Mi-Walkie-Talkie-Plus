.class public final Lcom/huawei/hms/scankit/p/xc;
.super Ljava/lang/Object;
.source "QRCodeDecoderMetaData.java"


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/xc;->a:Z

    return-void
.end method


# virtual methods
.method public a([Lcom/huawei/hms/scankit/aiscan/common/z;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/xc;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    const/4 v2, 0x2

    .line 3
    aget-object v3, p1, v2

    aput-object v3, p1, v0

    .line 4
    aput-object v1, p1, v2

    :cond_1
    :goto_0
    return-void
.end method
