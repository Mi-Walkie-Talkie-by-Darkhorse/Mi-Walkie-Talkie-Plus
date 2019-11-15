.class public Lcom/ifengyu/im/imservice/constant/MsgStatus;
.super Ljava/lang/Object;
.source "MsgStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/constant/MsgStatus$MsgStatusDef;
    }
.end annotation


# static fields
.field public static final DRAFT:I = -0x1

.field public static final FAIL:I = 0x2

.field public static final READ:I = 0x3

.field public static final SENDING:I = 0x0

.field public static final SUCCESS:I = 0x1

.field public static final UNREAD:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
