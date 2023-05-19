.class public abstract Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;
.super Ljava/lang/Object;
.source "AbsDataSplitManager.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->a:[B

    return-void
.end method

.method private e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->a:[B

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
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->a:[B

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/ifengyu/library/utils/j;->i(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->a:[B

    goto :goto_0

    .line 3
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->a:[B

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->e()I

    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->a:[B

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
