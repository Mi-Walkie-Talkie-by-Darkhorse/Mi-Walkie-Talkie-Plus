.class public Lcom/ifengyu/intercom/ui/widget/frequency/d;
.super Ljava/lang/Object;
.source "Mi3KeyInterceptor.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[II)V
    .locals 0

    return-void
.end method

.method public b(I[II)Z
    .locals 6

    const/4 v0, 0x2

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p3, v1, :cond_5

    const/16 v4, 0x1b8

    packed-switch p1, :pswitch_data_0

    return v3

    .line 1
    :pswitch_0
    aget p1, p2, v2

    mul-int/lit8 p1, p1, 0x64

    aget v5, p2, v3

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr p1, v5

    aget p2, p2, v0

    add-int/2addr p1, p2

    if-ne p1, v4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    .line 2
    :pswitch_1
    aget p1, p2, v2

    mul-int/lit8 p1, p1, 0x64

    aget p2, p2, v3

    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    const/16 p2, 0x1ae

    if-lt p1, p2, :cond_2

    if-gt p1, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 3
    :pswitch_2
    aget p1, p2, v2

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, p3

    const/16 p2, 0x2b

    if-lt p1, p2, :cond_3

    const/16 p2, 0x2c

    if-gt p1, p2, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :pswitch_3
    const/4 p1, 0x4

    if-ne p3, p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    :cond_5
    if-ne p3, v1, :cond_6

    return v3

    :cond_6
    const/16 p2, 0xb

    if-ne p3, p2, :cond_8

    if-le p1, v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2

    :cond_8
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
