.class public Lcom/mi/mimsgsdk/asr/BytesWrapper;
.super Ljava/lang/Object;
.source "BytesWrapper.java"


# instance fields
.field private bytes:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/BytesWrapper;->bytes:[B

    return-object v0
.end method

.method public setBytes([B)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/asr/BytesWrapper;->bytes:[B

    return-void
.end method
