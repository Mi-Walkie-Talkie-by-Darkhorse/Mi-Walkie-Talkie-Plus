.class public final Lorg/jboss/netty/util/ExternalResourceUtil;
.super Ljava/lang/Object;
.source "ExternalResourceUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs release([Lorg/jboss/netty/util/ExternalResourceReleasable;)V
    .locals 4

    const/4 v1, 0x0

    array-length v0, p0

    new-array v2, v0, [Lorg/jboss/netty/util/ExternalResourceReleasable;

    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    aget-object v3, p0, v0

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasables["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    aget-object v3, p0, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v2

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v3, v2, v1

    invoke-interface {v3}, Lorg/jboss/netty/util/ExternalResourceReleasable;->releaseExternalResources()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
