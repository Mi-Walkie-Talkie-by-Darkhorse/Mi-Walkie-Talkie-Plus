.class public Lcom/ifengyu/intercom/node/btle/GattException;
.super Ljava/lang/Exception;
.source "GattException.java"


# static fields
.field private static final serialVersionUID:J = 0x20b9733626e7f954L


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3
    iput p2, p0, Lcom/ifengyu/intercom/node/btle/GattException;->a:I

    .line 4
    iput-boolean p3, p0, Lcom/ifengyu/intercom/node/btle/GattException;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/GattException;->a:I

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/GattException;->b:Z

    return v0
.end method
