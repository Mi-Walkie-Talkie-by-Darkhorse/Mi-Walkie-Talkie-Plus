.class public abstract Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;
.super Ljava/lang/Object;
.source "AbsDataSplitManager.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m<",
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->b:I

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->c:I

    return-void
.end method

.method private g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->a:[B

    if-eqz v0, :cond_0

    .line 2
    array-length v1, v0

    div-int/lit16 v1, v1, 0x80

    .line 3
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
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->a:[B

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/ifengyu/library/utils/j;->i(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->a:[B

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->c:I

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->b:I

    .line 5
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->d:I

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->e:I

    goto :goto_0

    .line 7
    :cond_0
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->a:[B

    .line 8
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    array-length p1, p1

    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->c:I

    .line 10
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->b:I

    .line 11
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->d:I

    .line 12
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->g()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->e:I

    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->a:[B

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->e:I

    return v0
.end method
