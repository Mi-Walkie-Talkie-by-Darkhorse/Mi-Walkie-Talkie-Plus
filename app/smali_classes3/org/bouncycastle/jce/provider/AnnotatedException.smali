.class public Lorg/bouncycastle/jce/provider/AnnotatedException;
.super Ljava/lang/Exception;

# interfaces
.implements Lorg/bouncycastle/jce/exception/ExtException;


# instance fields
.field private _underlyingException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    return-object v0
.end method

.method getUnderlyingException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    return-object v0
.end method
