.class public Lcom/ifengyu/im/imservice/constant/SessionType;
.super Ljava/lang/Object;
.source "SessionType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/constant/SessionType$SessionTypeDef;
    }
.end annotation


# static fields
.field public static final NONE:I = -0x1

.field public static final P2P:I = 0x1

.field public static final ROOM:I = 0x2

.field public static final SYSTEM:I = 0x0

.field public static final TEAM:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSessionType(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
