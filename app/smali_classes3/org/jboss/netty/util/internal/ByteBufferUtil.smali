.class public final Lorg/jboss/netty/util/internal/ByteBufferUtil;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# static fields
.field private static final CLEAN_SUPPORTED:Z

.field private static final directBufferCleaner:Ljava/lang/reflect/Method;

.field private static final directBufferCleanerClean:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "java.nio.DirectByteBuffer"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "cleaner"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v4, "sun.misc.Cleaner"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "clean"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    move-object v2, v3

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/util/internal/ByteBufferUtil;->CLEAN_SUPPORTED:Z

    sput-object v2, Lorg/jboss/netty/util/internal/ByteBufferUtil;->directBufferCleaner:Ljava/lang/reflect/Method;

    sput-object v1, Lorg/jboss/netty/util/internal/ByteBufferUtil;->directBufferCleanerClean:Ljava/lang/reflect/Method;

    return-void

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_1
    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy(Ljava/nio/ByteBuffer;)V
    .locals 3

    sget-boolean v0, Lorg/jboss/netty/util/internal/ByteBufferUtil;->CLEAN_SUPPORTED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lorg/jboss/netty/util/internal/ByteBufferUtil;->directBufferCleaner:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/util/internal/ByteBufferUtil;->directBufferCleanerClean:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
