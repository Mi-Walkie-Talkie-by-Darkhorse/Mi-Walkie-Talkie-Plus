.class Lcom/amap/api/mapcore/util/dx$a;
.super Ljava/lang/Object;
.source "RandomUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/dx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dx$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/dx$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x41c64e6d

    iput v0, p0, Lcom/amap/api/mapcore/util/dx$a;->b:I

    const/16 v0, 0x3039

    iput v0, p0, Lcom/amap/api/mapcore/util/dx$a;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/dx$a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dx$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(IZ)C
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dx$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz p2, :cond_0

    sub-int p1, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dx$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public a(CZ)I
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dx$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dx$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz p2, :cond_0

    sub-int v0, v1, v0

    :cond_0
    return v0
.end method

.method public a(I)I
    .locals 4

    int-to-long v0, p1

    iget v2, p0, Lcom/amap/api/mapcore/util/dx$a;->b:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/amap/api/mapcore/util/dx$a;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amap/api/mapcore/util/dx$a;->a(ZILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/dx$a;->a(I)I

    move-result v3

    rem-int v4, v3, v2

    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore/util/dx$a;->a(I)I

    move-result p2

    rem-int v3, p2, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v4, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    invoke-virtual {v1, v3, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ZILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dx$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5, p1}, Lcom/amap/api/mapcore/util/dx$a;->a(CZ)I

    move-result v5

    if-gez v5, :cond_2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    add-int/2addr v5, p2

    add-int/2addr v5, v1

    rem-int/2addr v5, v3

    invoke-virtual {p0, v5, p1}, Lcom/amap/api/mapcore/util/dx$a;->a(IZ)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
