.class public Lcom/yalantis/ucrop/model/b;
.super Ljava/lang/Object;


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

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-class v2, Lcom/yalantis/ucrop/model/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/yalantis/ucrop/model/b;

    iget v2, p0, Lcom/yalantis/ucrop/model/b;->a:I

    iget v3, p1, Lcom/yalantis/ucrop/model/b;->a:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/yalantis/ucrop/model/b;->b:I

    iget v3, p1, Lcom/yalantis/ucrop/model/b;->b:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/yalantis/ucrop/model/b;->c:I

    iget p1, p1, Lcom/yalantis/ucrop/model/b;->c:I

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
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
