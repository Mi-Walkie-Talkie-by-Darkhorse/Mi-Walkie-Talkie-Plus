.class public abstract Lcom/ifengyu/intercom/update/sealshark/a;
.super Ljava/lang/Object;
.source "AbsDataSplitManager.java"

# interfaces
.implements Lcom/ifengyu/intercom/update/sealshark/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ifengyu/intercom/update/sealshark/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:I

.field protected d:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/a;->a:[B

    return-void
.end method

.method private c()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/a;->a:[B

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/a;->a:[B

    array-length v0, v0

    div-int/lit16 v0, v0, 0x80

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/a;->a:[B

    array-length v1, v1

    rem-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/ifengyu/intercom/b/n;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/a;->a:[B

    iput v3, p0, Lcom/ifengyu/intercom/update/sealshark/a;->b:I

    :goto_0
    return-void

    :cond_0
    array-length v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/a;->a:[B

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/a;->a:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/a;->c()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/a;->b:I

    goto :goto_0
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/a;->a:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/a;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/a;->a:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
