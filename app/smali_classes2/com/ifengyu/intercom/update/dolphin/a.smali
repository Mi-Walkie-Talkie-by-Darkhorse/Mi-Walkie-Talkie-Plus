.class public abstract Lcom/ifengyu/intercom/update/dolphin/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/update/dolphin/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ifengyu/intercom/update/dolphin/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->c:I

    return-void
.end method

.method private f()I
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->a:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    div-int/lit16 v1, v1, 0x80

    array-length v0, v0

    rem-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/ifengyu/intercom/i/r;->b(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/a;->a:[B

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->c:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->d:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->e:I

    goto :goto_0

    :cond_0
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/a;->a:[B

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    iput p1, p0, Lcom/ifengyu/intercom/update/dolphin/a;->c:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->d:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/a;->f()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/update/dolphin/a;->e:I

    :goto_0
    return-void
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->a:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->a:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->e:I

    return v0
.end method
