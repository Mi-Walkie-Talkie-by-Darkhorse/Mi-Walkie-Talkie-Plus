.class public final Lcom/huawei/hms/scankit/p/Wb;
.super Ljava/lang/Object;
.source "PDF417DetectorResult.java"


# instance fields
.field private final a:Lcom/huawei/hms/scankit/p/bb;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lcom/huawei/hms/scankit/aiscan/common/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/bb;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/bb;",
            "Ljava/util/List<",
            "[",
            "Lcom/huawei/hms/scankit/aiscan/common/z;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Wb;->a:Lcom/huawei/hms/scankit/p/bb;

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/scankit/p/Wb;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/hms/scankit/p/bb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Wb;->a:Lcom/huawei/hms/scankit/p/bb;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Lcom/huawei/hms/scankit/aiscan/common/z;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Wb;->b:Ljava/util/List;

    return-object v0
.end method
