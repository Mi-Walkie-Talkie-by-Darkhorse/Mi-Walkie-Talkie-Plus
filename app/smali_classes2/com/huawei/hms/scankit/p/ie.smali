.class final Lcom/huawei/hms/scankit/p/ie;
.super Ljava/lang/Object;
.source "BlockPair.java"


# instance fields
.field private final a:[B

.field private final b:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/ie;->a:[B

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/scankit/p/ie;->b:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ie;->a:[B

    return-object v0
.end method

.method public b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ie;->b:[B

    return-object v0
.end method
