.class public Lorg/bouncycastle/jce/exception/ExtIOException;
.super Ljava/io/IOException;

# interfaces
.implements Lorg/bouncycastle/jce/exception/ExtException;


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/jce/exception/ExtIOException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/exception/ExtIOException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
