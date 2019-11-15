.class Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector$1;
.super Ljava/lang/Object;
.source "AbstractNioSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->rebuildSelector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector$1;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector$1;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->rebuildSelector()V

    return-void
.end method
