.class public Lorg/bouncycastle/util/StoreException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private _e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    return-object v0
.end method
