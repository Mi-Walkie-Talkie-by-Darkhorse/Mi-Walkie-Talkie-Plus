.class public Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;
.super Ljava/lang/Exception;
.source "InvalidPacketExecption.java"


# static fields
.field public static final ERROR_CODE_LENGTH_TOO_BIG:I = 0x3

.field public static final ERROR_CODE_LENGTH_TOO_SMALL:I = 0x2

.field public static final ERROR_CODE_NO_HTTP_HEAD_END:I = 0x4

.field public static final ERROR_CODE_NO_MNS_HEAD:I = 0x1

.field private static final serialVersionUID:J = -0x411d47a4fccf8bd0L


# instance fields
.field public errCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;->errCode:I

    iput p2, p0, Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;->errCode:I

    return-void
.end method
