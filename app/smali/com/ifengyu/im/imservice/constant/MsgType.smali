.class public Lcom/ifengyu/im/imservice/constant/MsgType;
.super Ljava/lang/Object;
.source "MsgType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/constant/MsgType$MsgTypeDef;
    }
.end annotation


# static fields
.field public static final AUDIO:I = 0x2

.field public static final AVCHAT:I = 0x6

.field public static final BODY_TYPE_AUDIO:I = 0x2

.field public static final BODY_TYPE_CUSTOM:I = 0x0

.field public static final BODY_TYPE_TEXT:I = 0x1

.field public static final BODY_TYPE_VIDEO:I = 0x3

.field public static final CUSTOM:I = 0x0

.field public static final FILE:I = 0x5

.field public static final IMAGE:I = 0xa

.field public static final LOCATION:I = 0x4

.field public static final NOTIFICATION:I = 0x7

.field public static final ROBOT:I = 0x9

.field public static final TEXT:I = 0x1

.field public static final TIP:I = 0x8

.field public static final UNDEF:I = -0x1

.field public static final VIDEO:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMsgType(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
