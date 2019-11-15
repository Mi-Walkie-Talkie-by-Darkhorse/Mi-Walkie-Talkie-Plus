.class public final Lcom/amap/api/services/cloud/CloudResult;
.super Ljava/lang/Object;
.source "CloudResult.java"


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/cloud/CloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Lcom/amap/api/services/cloud/CloudSearch$Query;

.field private f:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;


# direct methods
.method private constructor <init>(Lcom/amap/api/services/cloud/CloudSearch$Query;ILcom/amap/api/services/cloud/CloudSearch$SearchBound;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/cloud/CloudSearch$Query;",
            "I",
            "Lcom/amap/api/services/cloud/CloudSearch$SearchBound;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/cloud/CloudItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudResult;->e:Lcom/amap/api/services/cloud/CloudSearch$Query;

    iput p2, p0, Lcom/amap/api/services/cloud/CloudResult;->c:I

    iput p4, p0, Lcom/amap/api/services/cloud/CloudResult;->d:I

    iget v0, p0, Lcom/amap/api/services/cloud/CloudResult;->c:I

    iget v1, p0, Lcom/amap/api/services/cloud/CloudResult;->d:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/amap/api/services/cloud/CloudResult;->d:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/services/cloud/CloudResult;->a:I

    iput-object p5, p0, Lcom/amap/api/services/cloud/CloudResult;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/amap/api/services/cloud/CloudResult;->f:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    return-void
.end method

.method public static createPagedResult(Lcom/amap/api/services/cloud/CloudSearch$Query;ILcom/amap/api/services/cloud/CloudSearch$SearchBound;ILjava/util/ArrayList;)Lcom/amap/api/services/cloud/CloudResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/cloud/CloudSearch$Query;",
            "I",
            "Lcom/amap/api/services/cloud/CloudSearch$SearchBound;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/cloud/CloudItem;",
            ">;)",
            "Lcom/amap/api/services/cloud/CloudResult;"
        }
    .end annotation

    new-instance v0, Lcom/amap/api/services/cloud/CloudResult;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/cloud/CloudResult;-><init>(Lcom/amap/api/services/cloud/CloudSearch$Query;ILcom/amap/api/services/cloud/CloudSearch$SearchBound;ILjava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public final getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudResult;->f:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    return-object v0
.end method

.method public final getClouds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/cloud/CloudItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudResult;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPageCount()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/cloud/CloudResult;->a:I

    return v0
.end method

.method public final getQuery()Lcom/amap/api/services/cloud/CloudSearch$Query;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudResult;->e:Lcom/amap/api/services/cloud/CloudSearch$Query;

    return-object v0
.end method

.method public final getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/cloud/CloudResult;->c:I

    return v0
.end method
