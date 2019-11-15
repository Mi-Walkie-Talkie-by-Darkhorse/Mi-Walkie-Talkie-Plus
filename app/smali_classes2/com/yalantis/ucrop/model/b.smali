.class public Lcom/yalantis/ucrop/model/b;
.super Ljava/lang/Object;
.source "ExifInfo.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yalantis/ucrop/model/b;->a:I

    iput p2, p0, Lcom/yalantis/ucrop/model/b;->b:I

    iput p3, p0, Lcom/yalantis/ucrop/model/b;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/yalantis/ucrop/model/b;

    iget v2, p0, Lcom/yalantis/ucrop/model/b;->a:I

    iget v3, p1, Lcom/yalantis/ucrop/model/b;->a:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/yalantis/ucrop/model/b;->b:I

    iget v3, p1, Lcom/yalantis/ucrop/model/b;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/yalantis/ucrop/model/b;->c:I

    iget v3, p1, Lcom/yalantis/ucrop/model/b;->c:I

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/yalantis/ucrop/model/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yalantis/ucrop/model/b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yalantis/ucrop/model/b;->c:I

    add-int/2addr v0, v1

    return v0
.end method
