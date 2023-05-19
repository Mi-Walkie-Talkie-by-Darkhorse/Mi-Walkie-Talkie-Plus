.class final Lcom/huawei/hms/scankit/p/Ya$a;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Ya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/huawei/hms/scankit/p/Ya$a;->a:I

    .line 3
    iput p2, p0, Lcom/huawei/hms/scankit/p/Ya$a;->b:I

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Ya$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/huawei/hms/scankit/p/Ya$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/huawei/hms/scankit/p/Ya$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/huawei/hms/scankit/p/Ya$a;->b:I

    return p0
.end method


# virtual methods
.method a()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/huawei/hms/scankit/p/Ya$a;->a:I

    return v0
.end method

.method b()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/huawei/hms/scankit/p/Ya$a;->b:I

    return v0
.end method

.method c()Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 3

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/z;

    iget v1, p0, Lcom/huawei/hms/scankit/p/Ya$a;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/hms/scankit/p/Ya$a;->b:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/scankit/p/Ya$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/scankit/p/Ya$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
