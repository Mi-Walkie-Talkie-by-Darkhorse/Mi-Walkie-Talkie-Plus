.class public final Lorg/jboss/netty/util/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final ID:Ljava/lang/String; = "3.6.6.Final-90e1eb2"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "3.6.6.Final-90e1eb2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
