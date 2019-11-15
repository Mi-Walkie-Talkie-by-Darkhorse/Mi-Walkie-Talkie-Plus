.class public final Lorg/jboss/netty/channel/local/LocalAddress;
.super Ljava/net/SocketAddress;
.source "LocalAddress.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/net/SocketAddress;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jboss/netty/channel/local/LocalAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final EPHEMERAL:Ljava/lang/String; = "ephemeral"

.field private static final serialVersionUID:J = -0x31fcbd20210f4ec5L


# instance fields
.field private final ephemeral:Z

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/local/LocalAddress;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    const-string v1, "ephemeral"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/channel/local/LocalAddress;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/local/LocalAddress;->compareTo(Lorg/jboss/netty/channel/local/LocalAddress;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/channel/local/LocalAddress;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget-boolean v2, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p1, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-eqz v2, :cond_3

    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    if-lt v2, v3, :cond_0

    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Two different ephemeral addresses have same identityHashCode."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v1, p1, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/jboss/netty/channel/local/LocalAddress;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-eqz v1, :cond_2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/jboss/netty/channel/local/LocalAddress;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEphemeral()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
