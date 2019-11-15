.class final Lorg/jboss/netty/channel/socket/nio/ProtocolFamilyConverter;
.super Ljava/lang/Object;
.source "ProtocolFamilyConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/ProtocolFamilyConverter$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)Ljava/net/ProtocolFamily;
    .locals 2

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/ProtocolFamilyConverter$1;->$SwitchMap$org$jboss$netty$channel$socket$InternetProtocolFamily:[I

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
