.class public Lcom/mi/mimsgsdk/message/CustomBody;
.super Ljava/lang/Object;
.source "CustomBody.java"

# interfaces
.implements Lcom/mi/mimsgsdk/message/MiMsgBody;


# instance fields
.field private TAG:Ljava/lang/String;

.field public mByteData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CustomBody"

    iput-object v0, p0, Lcom/mi/mimsgsdk/message/CustomBody;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public codeBody()[B
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/message/CustomBody;->mByteData:[B

    return-object v0
.end method

.method public decodeBody([B)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/message/CustomBody;->mByteData:[B

    return-void
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/message/CustomBody;->mByteData:[B

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/message/CustomBody;->mByteData:[B

    return-void
.end method
